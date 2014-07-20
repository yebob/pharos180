require 'test_helper'

class PositionSkillsControllerTest < ActionController::TestCase
  setup do
    @position_skill = position_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:position_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create position_skill" do
    assert_difference('PositionSkill.count') do
      post :create, position_skill: {  }
    end

    assert_redirected_to position_skill_path(assigns(:position_skill))
  end

  test "should show position_skill" do
    get :show, id: @position_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @position_skill
    assert_response :success
  end

  test "should update position_skill" do
    patch :update, id: @position_skill, position_skill: {  }
    assert_redirected_to position_skill_path(assigns(:position_skill))
  end

  test "should destroy position_skill" do
    assert_difference('PositionSkill.count', -1) do
      delete :destroy, id: @position_skill
    end

    assert_redirected_to position_skills_path
  end
end
