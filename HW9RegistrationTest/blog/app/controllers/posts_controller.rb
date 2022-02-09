class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_cookies
  before_action :check_current_author, only: [:new, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.includes(:author)
    @pagy, @posts = pagy(Post.all.order(created_at: :desc), items: 8)
  end

  def search
    @posts = Post.where('content ILIKE ? OR title ILIKE ?', "%#{params[:query]}%", "%#{params[:query]}%")
    @pagy, @records = pagy(@posts, items: 8)
    render :index
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post.increment!(:views_count)
    @comment_status = params[:comments_status].to_s.downcase
    @comments = if @comment_status == 'unpublished'
                  @post.comments.unpublished
                else
                  @post.comments.published
                end
    @comments = @post.comments.all
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

   # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.author_id = current_author.id
    @post.title = @post.author.full_name
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_cookies
    unless current_author
      cookies[:views] = cookies[:views] ? cookies[:views].to_i + 1 : 1
    end
  end

  def check_current_author
    unless current_author
      redirect_to home_url
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :content, :image, :author_id)
  end
end
