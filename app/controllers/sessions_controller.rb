class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_user_name(params[:session][:user_name])

    if user
      build_cookie(user)
      redirect_to gists_path
    else
      flash.now[:error] = "You don't exist yet!"
      render 'new'
    end
  end

end
