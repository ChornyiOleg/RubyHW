class VotesController < ApplicationController
  before_action :set_comment
  before_action :set_post

  def create
    if @comment.author_comment_votes.create!(author: current_author, vote_value: 1)
      render 'votes'
    else
      redirect_to @post
    end
  end

  def dislike
    if @comment.author_comment_votes.create!(author: current_author, vote_value: -1)
      render 'votes'
    else
      redirect_to @post
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:comment_id])
  end

  def set_post
    @post = @comment.post
  end

end
