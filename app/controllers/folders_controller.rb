class FoldersController < ApplicationController
  # Shows all the folders
  def index
    @folders = Folder.all
  end

  def show
    @folder = Folder.find(params[:id])
  end

  def new
  end
  def create
  end
end
