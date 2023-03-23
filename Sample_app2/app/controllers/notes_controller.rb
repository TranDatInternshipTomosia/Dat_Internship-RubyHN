class NotesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :update, :edit]
  before_action :correct_user, only: :destroy
  #   before_action :find_note

  def show
    if logged_in?
      @note = current_user.notes.find(params[:id])
    end
  end

  def create
    @note = current_user.notes.build(note_params)
    if @note.save
      flash[:success] = "Note created successfully"
      redirect_to request.referrer
    else
      @feed_titles = current_user.feed.paginate(page: params[:page])
      render "users/show"
    end
  end

  def edit
  end

  def destroy
    @note.destroy
    flash[:success] = "Micropost deleted successfully"
    redirect_to request.referrer || root_url
  end

  private

  def note_params
    params.require(:note).permit(:title, :description)
  end

  #   def find_note
  #     @note = current_user.notes.where(id: params[:id]).first
  #     redirect_to root_url, alert: "Note not found" unless @note
  #   end
end
