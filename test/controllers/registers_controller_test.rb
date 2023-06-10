require "test_helper"

class RegistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @register = registers(:one)
  end

  test "should get index" do
    get registers_url
    assert_response :success
  end

  test "should get new" do
    get new_register_url
    assert_response :success
  end

  test "should create register" do
    assert_difference("Register.count") do
      post registers_url, params: { register: { amount: @register.amount, arrival_time: @register.arrival_time, departure_time: @register.departure_time, license_plate: @register.license_plate, name: @register.name, phone_number: @register.phone_number, slots: @register.slots, vehicle_type: @register.vehicle_type } }
    end

    assert_redirected_to register_url(Register.last)
  end

  test "should show register" do
    get register_url(@register)
    assert_response :success
  end

  test "should get edit" do
    get edit_register_url(@register)
    assert_response :success
  end

  test "should update register" do
    patch register_url(@register), params: { register: { amount: @register.amount, arrival_time: @register.arrival_time, departure_time: @register.departure_time, license_plate: @register.license_plate, name: @register.name, phone_number: @register.phone_number, slots: @register.slots, vehicle_type: @register.vehicle_type } }
    assert_redirected_to register_url(@register)
  end

  test "should destroy register" do
    assert_difference("Register.count", -1) do
      delete register_url(@register)
    end

    assert_redirected_to registers_url
  end
end
