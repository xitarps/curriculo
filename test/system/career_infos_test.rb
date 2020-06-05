require "application_system_test_case"

class CareerInfosTest < ApplicationSystemTestCase
  setup do
    @career_info = career_infos(:one)
  end

  test "visiting the index" do
    visit career_infos_url
    assert_selector "h1", text: "Career Infos"
  end

  test "creating a Career info" do
    visit career_infos_url
    click_on "New Career Info"

    fill_in "Company", with: @career_info.company
    fill_in "Description", with: @career_info.description
    fill_in "End date", with: @career_info.end_date
    fill_in "Start date", with: @career_info.start_date
    fill_in "Work function", with: @career_info.work_function
    click_on "Create Career info"

    assert_text "Career info was successfully created"
    click_on "Back"
  end

  test "updating a Career info" do
    visit career_infos_url
    click_on "Edit", match: :first

    fill_in "Company", with: @career_info.company
    fill_in "Description", with: @career_info.description
    fill_in "End date", with: @career_info.end_date
    fill_in "Start date", with: @career_info.start_date
    fill_in "Work function", with: @career_info.work_function
    click_on "Update Career info"

    assert_text "Career info was successfully updated"
    click_on "Back"
  end

  test "destroying a Career info" do
    visit career_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Career info was successfully destroyed"
  end
end
