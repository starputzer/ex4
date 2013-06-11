require "test_helper"

class OutputdevicesControllerTest < ActionController::TestCase

  before do
    @outputdevice = outputdevices(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:outputdevices)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Outputdevice.count') do
      post :create, outputdevice: {  }
    end

    assert_redirected_to outputdevice_path(assigns(:outputdevice))
  end

  def test_show
    get :show, id: @outputdevice
    assert_response :success
  end

  def test_edit
    get :edit, id: @outputdevice
    assert_response :success
  end

  def test_update
    put :update, id: @outputdevice, outputdevice: {  }
    assert_redirected_to outputdevice_path(assigns(:outputdevice))
  end

  def test_destroy
    assert_difference('Outputdevice.count', -1) do
      delete :destroy, id: @outputdevice
    end

    assert_redirected_to outputdevices_path
  end
end
