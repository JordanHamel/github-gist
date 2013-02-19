class GistFilesController < ApplicationController

  def new
    @gist_file = GistFile.new
  end

end
