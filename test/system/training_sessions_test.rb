require "application_system_test_case"

class TrainingSessionsTest < ApplicationSystemTestCase
  setup do
    @training_session = training_sessions(:one)
  end

  test "visiting the index" do
    visit training_sessions_url
    assert_selector "h1", text: "Training Sessions"
  end

  test "creating a Training session" do
    visit training_sessions_url
    click_on "New Training Session"

    fill_in "Description", with: @training_session.description
    fill_in "Start at", with: @training_session.start_at
    click_on "Create Training session"

    assert_text "Training session was successfully created"
    click_on "Back"
  end

  test "updating a Training session" do
    visit training_sessions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @training_session.description
    fill_in "Start at", with: @training_session.start_at
    click_on "Update Training session"

    assert_text "Training session was successfully updated"
    click_on "Back"
  end

  test "destroying a Training session" do
    visit training_sessions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Training session was successfully destroyed"
  end
end
