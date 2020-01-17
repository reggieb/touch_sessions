require 'test_helper'

class TrainingSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_session = training_sessions(:one)
  end

  test "should get index" do
    get training_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_training_session_url
    assert_response :success
  end

  test "should create training_session" do
    assert_difference('TrainingSession.count') do
      post training_sessions_url, params: params
    end

    assert_redirected_to training_session_url(TrainingSession.last)
  end

  test "should show training_session" do
    get training_session_url(@training_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_session_url(@training_session)
    assert_response :success
  end

  test "should update training_session" do
    patch training_session_url(@training_session), params: params
    assert_redirected_to training_session_url(@training_session)
  end

  test "should destroy training_session" do
    assert_difference('TrainingSession.count', -1) do
      delete training_session_url(@training_session)
    end

    assert_redirected_to training_sessions_url
  end

  def params
    { training_session: { aims: @training_session.aims, start_at: @training_session.start_at } }
  end
end
