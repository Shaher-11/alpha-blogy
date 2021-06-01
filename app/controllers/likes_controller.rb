class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(article_id: params[:article_id])

    if @like.save
      redirect_to articles_path, notice: 'You liked a post.'
    else
      redirect_to articles_path, alert: 'You cannot like this post.'
    end
  end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if like
      like.destroy
      redirect_to articles_path, notice: 'You disliked a post.'
    else
      redirect_to articles_path, alert: 'You cannot dislike post that you did not like before.'
    end
  end
end