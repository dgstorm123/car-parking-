require "test_helper"

class StatusSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_slot = status_slots(:one)
  end

  test "should get index" do
    get status_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_status_slot_url
    assert_response :success
  end

  test "should create status_slot" do
    assert_difference("StatusSlot.count") do
      post status_slots_url, params: { status_slot: { license_plate: @status_slot.license_plate, slots: @status_slot.slots, status: @status_slot.status, vehicle_type: @status_slot.vehicle_type } }
    end

    assert_redirected_to status_slot_url(StatusSlot.last)
  end

  test "should show status_slot" do
    get status_slot_url(@status_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_slot_url(@status_slot)
    assert_response :success
  end

  test "should update status_slot" do
    patch status_slot_url(@status_slot), params: { status_slot: { license_plate: @status_slot.license_plate, slots: @status_slot.slots, status: @status_slot.status, vehicle_type: @status_slot.vehicle_type } }
    assert_redirected_to status_slot_url(@status_slot)
  end

  test "should destroy status_slot" do
    assert_difference("StatusSlot.count", -1) do
      delete status_slot_url(@status_slot)
    end

    assert_redirected_to status_slots_url
  end
end
