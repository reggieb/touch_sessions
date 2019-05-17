class TrainingSessionsController < ApplicationController
  before_action :set_training_session, only: [:show, :edit, :update, :destroy]

  # GET /training_sessions
  def index
    @training_sessions = TrainingSession.all
  end

  # GET /training_sessions/1
  def show
  end

  # GET /training_sessions/new
  def new
    @training_session = TrainingSession.new
  end

  # GET /training_sessions/1/edit
  def edit
  end

  # POST /training_sessions
  def create
    @training_session = TrainingSession.new(training_session_params)

    if @training_session.save
      redirect_to @training_session, notice: 'Training session was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /training_sessions/1
  def update
    if @training_session.update(training_session_params)
      redirect_to @training_session, notice: 'Training session was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /training_sessions/1
  def destroy
    @training_session.destroy
    redirect_to training_sessions_url, notice: 'Training session was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_session
      @training_session = TrainingSession.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def training_session_params
      params.require(:training_session).permit(:title, :start_at, :venue, :aims)
    end
end
