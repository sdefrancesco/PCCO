require 'test_helper'

class ArtistUploadsControllerTest < ActionController::TestCase
  setup do
    @artist_upload = artist_uploads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artist_uploads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist_upload" do
    assert_difference('ArtistUpload.count') do
      post :create, artist_upload: { description: @artist_upload.description, title: @artist_upload.title }
    end

    assert_redirected_to artist_upload_path(assigns(:artist_upload))
  end

  test "should show artist_upload" do
    get :show, id: @artist_upload
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist_upload
    assert_response :success
  end

  test "should update artist_upload" do
    patch :update, id: @artist_upload, artist_upload: { description: @artist_upload.description, title: @artist_upload.title }
    assert_redirected_to artist_upload_path(assigns(:artist_upload))
  end

  test "should destroy artist_upload" do
    assert_difference('ArtistUpload.count', -1) do
      delete :destroy, id: @artist_upload
    end

    assert_redirected_to artist_uploads_path
  end
end
