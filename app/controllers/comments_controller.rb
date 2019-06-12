class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      flash[:success] = "Comment Hooted!"
      redirect_to hoot_url
    else
      @feed_items = []
      redirect_to hoot_url
    end
  end

  def destroy
    @comment.destroy
    flash[:success] = "Comment DeHooted"
    redirect_back(fallback_location: root_url)
  end

  def index
    @comment = Comment.all
  end
  private

  def comment_params
    params.require(:comment).permit(:content, :photo)
  end

  def correct_user
    @comment = current_user.comment.find_by(id: params[:id])
    redirect_to root_url if @comment.nil?
  end
  
  
end