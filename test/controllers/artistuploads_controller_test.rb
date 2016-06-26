require 'test_helper'

class ArtistuploadsControllerTest < ActionController::TestCase
  setup do
    @artistupload = artistuploads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artistuploads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artistupload" do
    assert_difference('Artistupload.count') do
      post :create, artistupload: { description: @artistupload.description, inspiration: @artistupload.inspiration, title: @artistupload.title }
    end

    assert_redirected_to artistupload_path(assigns(:artistupload))
  end

  test "should show artistupload" do
    get :show, id: @artistupload
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artistupload
    assert_response :success
  end

  test "should update artistupload" do
    patch :update, id: @artistupload, artistupload: { description: @artistupload.description, inspiration: @artistupload.inspiration, title: @artistupload.title }
    assert_redirected_to artistupload_path(assigns(:artistupload))
  end

  test "should destroy artistupload" do
    assert_difference('Artistupload.count', -1) do
      delete :destroy, id: @artistupload
    end

    assert_redirected_to artistuploads_path
  end
end
