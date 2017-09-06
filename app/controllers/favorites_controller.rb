class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:favorite_id])
    current_user.favorite(micropost)
    flash[:success] = 'micropostをお気に入りに追加しました。'
    redirect_to :back
  end

  def destroy
    micropost = Micropost.find(params[:favorite_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'micropostのお気に入りを解除しました。'
    redirect_to :back
  end
end
