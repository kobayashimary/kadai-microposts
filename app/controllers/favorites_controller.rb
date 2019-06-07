class FavoritesController < ApplicationController
  def create
    micropost=Micropost.find( params[:content_id])
    current_user.add_favorite(micropost)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to root_url
  end

  def destroy
    micropost=Micropost.find(params[:content_id])
    current_user.delete_favorite(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to root_url
  end
end
