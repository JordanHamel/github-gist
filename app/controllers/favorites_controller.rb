class FavoritesController < ApplicationController

  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.gist_id = params[:gist_id]
    favorite.save!

    render :nothing => true

  end

  def destroy
    favorite = current_user.favorites.find_by_gist_id(params[:gist_id])
    favorite.destroy

    render :nothing => true
  end
end
