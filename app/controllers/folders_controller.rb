class FoldersController < ApplicationController
  # Shows all the folders
  def index
    @folders = Folder.all
  end

  def show
    @folder = Folder.find(params[:id])
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(params[:folder_name])
    @folder.save!

    redirect_to folder_path(@folder.id)
  end

  private

  def folder_params
    params.require(:folder).permit(:folder_name)
  end
end
