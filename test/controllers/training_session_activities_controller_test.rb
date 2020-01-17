require 'test_helper'

class TrainingSessionActivitiesControllerTest < ActionDispatch::IntegrationTest
  def training_session_activity
    @training_session_activity ||= training_session_activities(:one)
  end

  def training_session
    training_session_activity.training_session
  end

  test "should get new" do
    get new_training_session_activity_url(training_session)
    assert_response :success
  end

  test "should create training_session_activity" do
    assert_difference('TrainingSessionActivity.count') do
      post training_session_activities_url(training_session, training_session_activity), params: params
    end

    assert_redirected_to training_session_url(training_session)
  end

  test "should get edit" do
    get edit_training_session_activity_url(training_session, training_session_activity)
    assert_response :success
  end

  test "should update training_session_activity" do
    patch training_session_activity_url(training_session, training_session_activity), params: params
    assert_redirected_to training_session_url(training_session)
  end

  test "should destroy training_session_activity" do
    assert_difference('TrainingSessionActivity.count', -1) do
      delete training_session_activity_url(training_session, training_session_activity)
    end

    assert_redirected_to training_session_url(training_session)
  end

  def params
    {
      training_session_activity: {
        activity_id: training_session_activity.activity_id,
        aim: training_session_activity.aim,
        description: training_session_activity.description,
        training_session_id: training_session_activity.training_session_id
      }
    }
  end
end
