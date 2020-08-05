class NotesController < ApplicationController

  def index
    # 1.  Get folders IDs
    # 2. Filter notes based on the folder_id
    @notes = Note.where(folder_id: params[:folder_id])
  end

  def show

  end
end
