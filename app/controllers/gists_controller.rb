class GistsController < ApplicationController

  def new
    @gist = Gist.new
    3.times { @gist.gist_files.build }
  end

  def create
    @gist = Gist.new(params[:gist])
    @gist.user_id = current_user.id

    if @gist.save
      flash[:success] = "Your gist has been created!"
      redirect_to @gist
    else
      flash[:error] = "Try again!"
      render 'new'
    end
  end

  def show
    @gist = Gist.find(params[:id])
  end

  def index
    @gists = current_user.gists
  end

end
