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
    @folder = Folder.new(folder_params)
    @folder.user_id = current_user.id
    if @folder.save!
      redirect_to folder_path(@folder.id)
    else
      render :new
    end
  end

  private

  def folder_params
    params.require(:folder).permit(:folder_name)
  end
end
