require "test_helper"

class OutputdevicesControllerTest < ActionController::TestCase

  setup do
    @outputdevice = outputdevices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outputdevices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outputdevice" do
    assert_difference('Outputdevice.count') do
      post :create, outputdevice: { name: @outputdevice.name }
    end

    assert_redirected_to outputdevice_path(assigns(:outputdevice))
  end

  test "should show outputdevice" do
    get :show, id: @outputdevice
    assert_response :success
  end

  test "shoud get edit" do
    get :edit, id: @outputdevice
    assert_response :success
  end

  test "should update outputdevice" do 
    put :update, id: @outputdevice, outputdevice: { name:@outputdevice.name }
    assert_redirected_to outputdevice_path(assigns(:outputdevice))
  end

  test "should destroy outputdevice" do
    assert_difference('Outputdevice.count', -1) do
      delete :destroy, id: @outputdevice
    end
    
    assert_redirected_to outputdevices_path
  end

  test "should toogle outputdevice" do
    get :toogle, id: @outputdevice
    assert_response 302
  end
end
