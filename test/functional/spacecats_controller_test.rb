require 'test_helper'

class SpacecatsControllerTest < ActionController::TestCase
  setup do
    @spacecat = spacecats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spacecats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spacecat" do
    assert_difference('Spacecat.count') do
      post :create, spacecat: { name: @spacecat.name, planet: @spacecat.planet, planets_visitd: @spacecat.planets_visitd }
    end

    assert_redirected_to spacecat_path(assigns(:spacecat))
  end

  test "should show spacecat" do
    get :show, id: @spacecat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spacecat
    assert_response :success
  end

  test "should update spacecat" do
    put :update, id: @spacecat, spacecat: { name: @spacecat.name, planet: @spacecat.planet, planets_visitd: @spacecat.planets_visitd }
    assert_redirected_to spacecat_path(assigns(:spacecat))
  end

  test "should destroy spacecat" do
    assert_difference('Spacecat.count', -1) do
      delete :destroy, id: @spacecat
    end

    assert_redirected_to spacecats_path
  end
end
