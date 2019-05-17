class TrainingSessionActivitiesController < ApplicationController
  before_action :training_session_activity, except: [:index, :new, :create]

  # GET /training_session_activities/new
  def new
    training_session
    @training_session_activity = TrainingSessionActivity.new
  end

  # GET /training_session_activities/1/edit
  def edit
  end

  # POST /training_session_activities
  def create
    @training_session_activity = training_session.training_session_activities.build(training_session_activity_params)

    if @training_session_activity.save
      redirect_to training_session, notice: 'Training session activity was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /training_session_activities/1
  def update
    if @training_session_activity.update(training_session_activity_params)
      redirect_to training_session, notice: 'Training session activity was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /training_session_activities/1
  def destroy
    @training_session_activity.destroy
    redirect_to training_session, notice: 'Training session activity was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def training_session_activity
      @training_session_activity = training_session.training_session_activities.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def training_session_activity_params
      params.require(:training_session_activity).permit(
        :activity_id, :aim, :description, :technical_points, :differentiation, :duration_minutes
      ).tap { |hash| hash[:training_session_id] = training_session.id }
    end

    def training_session
      @training_session ||= TrainingSession.find(params[:training_session_id])
    end
end
