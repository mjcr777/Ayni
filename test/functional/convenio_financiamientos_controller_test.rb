require 'test_helper'

class ConvenioFinanciamientosControllerTest < ActionController::TestCase
  setup do
    @convenio_financiamiento = convenio_financiamientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convenio_financiamientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convenio_financiamiento" do
    assert_difference('ConvenioFinanciamiento.count') do
      post :create, :convenio_financiamiento => @convenio_financiamiento.attributes
    end

    assert_redirected_to convenio_financiamiento_path(assigns(:convenio_financiamiento))
  end

  test "should show convenio_financiamiento" do
    get :show, :id => @convenio_financiamiento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @convenio_financiamiento.to_param
    assert_response :success
  end

  test "should update convenio_financiamiento" do
    put :update, :id => @convenio_financiamiento.to_param, :convenio_financiamiento => @convenio_financiamiento.attributes
    assert_redirected_to convenio_financiamiento_path(assigns(:convenio_financiamiento))
  end

  test "should destroy convenio_financiamiento" do
    assert_difference('ConvenioFinanciamiento.count', -1) do
      delete :destroy, :id => @convenio_financiamiento.to_param
    end

    assert_redirected_to convenio_financiamientos_path
  end
end
