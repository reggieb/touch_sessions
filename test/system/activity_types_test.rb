require "application_system_test_case"

class ActivityTypesTest < ApplicationSystemTestCase
  setup do
    @activity_type = activity_types(:one)
  end

  test "visiting the index" do
    visit activity_types_url
    assert_selector "h1", text: "Activity Types"
  end

  test "creating a Activity type" do
    visit activity_types_url
    click_on "New Activity Type"

    fill_in "Name", with: @activity_type.name
    fill_in "Tag", with: @activity_type.tag
    click_on "Create Activity type"

    assert_text "Activity type was successfully created"
    click_on "Back"
  end

  test "updating a Activity type" do
    visit activity_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @activity_type.name
    fill_in "Tag", with: @activity_type.tag
    click_on "Update Activity type"

    assert_text "Activity type was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity type" do
    visit activity_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity type was successfully destroyed"
  end
end
