require 'test_helper'

class TrainingSessionActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_session_activity = training_session_activities(:one)
  end

  test "should get index" do
    get training_session_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_training_session_activity_url
    assert_response :success
  end

  test "should create training_session_activity" do
    assert_difference('TrainingSessionActivity.count') do
      post training_session_activities_url, params: { training_session_activity: { activity_id: @training_session_activity.activity_id, bad: @training_session_activity.bad, good: @training_session_activity.good, suggestion: @training_session_activity.suggestion, summary: @training_session_activity.summary, training_session_id: @training_session_activity.training_session_id } }
    end

    assert_redirected_to training_session_activity_url(TrainingSessionActivity.last)
  end

  test "should show training_session_activity" do
    get training_session_activity_url(@training_session_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_session_activity_url(@training_session_activity)
    assert_response :success
  end

  test "should update training_session_activity" do
    patch training_session_activity_url(@training_session_activity), params: { training_session_activity: { activity_id: @training_session_activity.activity_id, bad: @training_session_activity.bad, good: @training_session_activity.good, suggestion: @training_session_activity.suggestion, summary: @training_session_activity.summary, training_session_id: @training_session_activity.training_session_id } }
    assert_redirected_to training_session_activity_url(@training_session_activity)
  end

  test "should destroy training_session_activity" do
    assert_difference('TrainingSessionActivity.count', -1) do
      delete training_session_activity_url(@training_session_activity)
    end

    assert_redirected_to training_session_activities_url
  end
end
