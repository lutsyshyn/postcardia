require 'test_helper'

class PostcardsControllerTest < ActionController::TestCase
  setup do
    @postcard = postcards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postcards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postcard" do
    assert_difference('Postcard.count') do
      post :create, postcard: { identifier: @postcard.identifier, recepient_id: @postcard.recepient_id, user_id: @postcard.user_id }
    end

    assert_redirected_to postcard_path(assigns(:postcard))
  end

  test "should show postcard" do
    get :show, id: @postcard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postcard
    assert_response :success
  end

  test "should update postcard" do
    patch :update, id: @postcard, postcard: { identifier: @postcard.identifier, recepient_id: @postcard.recepient_id, user_id: @postcard.user_id }
    assert_redirected_to postcard_path(assigns(:postcard))
  end

  test "should destroy postcard" do
    assert_difference('Postcard.count', -1) do
      delete :destroy, id: @postcard
    end

    assert_redirected_to postcards_path
  end
end
