require 'test_helper'

class SkillCatsControllerTest < ActionController::TestCase
  setup do
    @skill_cat = skill_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill_cat" do
    assert_difference('SkillCat.count') do
      post :create, skill_cat: {  }
    end

    assert_redirected_to skill_cat_path(assigns(:skill_cat))
  end

  test "should show skill_cat" do
    get :show, id: @skill_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skill_cat
    assert_response :success
  end

  test "should update skill_cat" do
    patch :update, id: @skill_cat, skill_cat: {  }
    assert_redirected_to skill_cat_path(assigns(:skill_cat))
  end

  test "should destroy skill_cat" do
    assert_difference('SkillCat.count', -1) do
      delete :destroy, id: @skill_cat
    end

    assert_redirected_to skill_cats_path
  end
end
