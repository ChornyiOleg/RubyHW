class CommentsController < ApplicationController
  before_action :post

  def index
    @comments = Comment.unpublished
    redirect_to post_path(@post)
  end

  def create
    @comment = @post.comments.create(comment_params)
    @comment.unpublished!

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: "Comment was successfully created." }
        # format.json { render :show, status: :created, location: @comment }
      else
        format.html { render 'posts/show', status: :unprocessable_entity }
        # format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @comment = Comment.find(params[:id])
    @comment.published!
    redirect_to post_path(@comment.post)
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :status, :post_id, :author_id)
  end

  def post
    @post = Post.find(params[:post_id])
  end
end
