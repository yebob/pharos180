require 'test_helper'

class SkillRelevancesControllerTest < ActionController::TestCase
  setup do
    @skill_relevance = skill_relevances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_relevances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill_relevance" do
    assert_difference('SkillRelevance.count') do
      post :create, skill_relevance: {  }
    end

    assert_redirected_to skill_relevance_path(assigns(:skill_relevance))
  end

  test "should show skill_relevance" do
    get :show, id: @skill_relevance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skill_relevance
    assert_response :success
  end

  test "should update skill_relevance" do
    patch :update, id: @skill_relevance, skill_relevance: {  }
    assert_redirected_to skill_relevance_path(assigns(:skill_relevance))
  end

  test "should destroy skill_relevance" do
    assert_difference('SkillRelevance.count', -1) do
      delete :destroy, id: @skill_relevance
    end

    assert_redirected_to skill_relevances_path
  end
end
