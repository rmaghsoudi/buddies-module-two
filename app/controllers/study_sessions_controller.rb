class StudySessionsController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    if @user.tutor
      @study_sessions = StudySession.where(tutor_id: session[:user_id])
    else
      @study_sessions = StudySession.where(student_id: session[:user_id])
    end
  end

  def new
    @study_session = StudySession.new
  end

  def create
    @study_session = StudySession.new(study_session_params)
    if @study_session.save
      redirect_to study_session_path(@study_session)
    else
      render :new
    end
  end

  def show
    @user = User.find(session[:user_id])
    @study_session = StudySession.find(params[:id])
  end

  def edit
    @study_session = StudySession.find(params[:id])
  end

  def update
    @study_session = StudySession.find(params[:id])
    if @study_session.update(study_session_params)
      redirect_to study_session_path(@study_session)
    else
      render :edit
    end
  end

  def destroy
    @study_session = StudySession.find(params[:id])
    @study_session.delete
  end

  private

  def study_session_params
    params.require(:study_session).permit(:name,:tutor_id, :student_id, :subject_id, :date)
  end

end
