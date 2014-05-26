require 'test_helper'

class ProficiencyLevelsControllerTest < ActionController::TestCase
  setup do
    @proficiency_level = proficiency_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proficiency_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proficiency_level" do
    assert_difference('ProficiencyLevel.count') do
      post :create, proficiency_level: {  }
    end

    assert_redirected_to proficiency_level_path(assigns(:proficiency_level))
  end

  test "should show proficiency_level" do
    get :show, id: @proficiency_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proficiency_level
    assert_response :success
  end

  test "should update proficiency_level" do
    patch :update, id: @proficiency_level, proficiency_level: {  }
    assert_redirected_to proficiency_level_path(assigns(:proficiency_level))
  end

  test "should destroy proficiency_level" do
    assert_difference('ProficiencyLevel.count', -1) do
      delete :destroy, id: @proficiency_level
    end

    assert_redirected_to proficiency_levels_path
  end
end
