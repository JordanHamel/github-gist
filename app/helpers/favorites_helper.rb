module FavoritesHelper

  def favorited?(gist)
    current_user.favorites.find_by_gist_id(gist.id)
  end

end
