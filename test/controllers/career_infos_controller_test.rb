require 'test_helper'

class CareerInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @career_info = career_infos(:one)
  end

  test "should get index" do
    get career_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_career_info_url
    assert_response :success
  end

  test "should create career_info" do
    assert_difference('CareerInfo.count') do
      post career_infos_url, params: { career_info: { company: @career_info.company, description: @career_info.description, end_date: @career_info.end_date, start_date: @career_info.start_date, work_function: @career_info.work_function } }
    end

    assert_redirected_to career_info_url(CareerInfo.last)
  end

  test "should show career_info" do
    get career_info_url(@career_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_career_info_url(@career_info)
    assert_response :success
  end

  test "should update career_info" do
    patch career_info_url(@career_info), params: { career_info: { company: @career_info.company, description: @career_info.description, end_date: @career_info.end_date, start_date: @career_info.start_date, work_function: @career_info.work_function } }
    assert_redirected_to career_info_url(@career_info)
  end

  test "should destroy career_info" do
    assert_difference('CareerInfo.count', -1) do
      delete career_info_url(@career_info)
    end

    assert_redirected_to career_infos_url
  end
end
