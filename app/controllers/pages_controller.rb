class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if current_user
      first_folder = current_user.folders.first
      redirect_to folder_notes_path(first_folder)
    end
  end
end
