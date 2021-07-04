require 'test_helper'

class DivesitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @divesite = divesites(:one)
  end

  test "should get index" do
    get divesites_url
    assert_response :success
  end

  test "should get new" do
    get new_divesite_url
    assert_response :success
  end

  test "should create divesite" do
    assert_difference('Divesite.count') do
      post divesites_url, params: { divesite: { name: @divesite.name } }
    end

    assert_redirected_to divesite_url(Divesite.last)
  end

  test "should show divesite" do
    get divesite_url(@divesite)
    assert_response :success
  end

  test "should get edit" do
    get edit_divesite_url(@divesite)
    assert_response :success
  end

  test "should update divesite" do
    patch divesite_url(@divesite), params: { divesite: { name: @divesite.name } }
    assert_redirected_to divesite_url(@divesite)
  end

  test "should destroy divesite" do
    assert_difference('Divesite.count', -1) do
      delete divesite_url(@divesite)
    end

    assert_redirected_to divesites_url
  end
end
