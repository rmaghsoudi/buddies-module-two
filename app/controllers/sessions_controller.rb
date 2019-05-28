class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
  end

  def show
    @session = Session.find(params[:id])
  end

  def edit
    @session = Session.find(params[:id])
  end

  def update
    @session = Session.find(params[:id])
    @session.update(session_params)
  end

  def destroy
    @session = Session.find(params[:id])
    @session.delete
  end

  private

  def session_params
    params.require(:session).permit(:name, :tutor_id, :student_id, :subject_id)
  end



end
