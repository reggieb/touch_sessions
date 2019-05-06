require "application_system_test_case"

class TrainingSessionActivitiesTest < ApplicationSystemTestCase
  setup do
    @training_session_activity = training_session_activities(:one)
  end

  test "visiting the index" do
    visit training_session_activities_url
    assert_selector "h1", text: "Training Session Activities"
  end

  test "creating a Training session activity" do
    visit training_session_activities_url
    click_on "New Training Session Activity"

    fill_in "Activity", with: @training_session_activity.activity_id
    fill_in "Bad", with: @training_session_activity.bad
    fill_in "Good", with: @training_session_activity.good
    fill_in "Suggestion", with: @training_session_activity.suggestion
    fill_in "Summary", with: @training_session_activity.summary
    fill_in "Training session", with: @training_session_activity.training_session_id
    click_on "Create Training session activity"

    assert_text "Training session activity was successfully created"
    click_on "Back"
  end

  test "updating a Training session activity" do
    visit training_session_activities_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @training_session_activity.activity_id
    fill_in "Bad", with: @training_session_activity.bad
    fill_in "Good", with: @training_session_activity.good
    fill_in "Suggestion", with: @training_session_activity.suggestion
    fill_in "Summary", with: @training_session_activity.summary
    fill_in "Training session", with: @training_session_activity.training_session_id
    click_on "Update Training session activity"

    assert_text "Training session activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Training session activity" do
    visit training_session_activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Training session activity was successfully destroyed"
  end
end
