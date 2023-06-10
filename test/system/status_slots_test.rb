require "application_system_test_case"

class StatusSlotsTest < ApplicationSystemTestCase
  setup do
    @status_slot = status_slots(:one)
  end

  test "visiting the index" do
    visit status_slots_url
    assert_selector "h1", text: "Status slots"
  end

  test "should create status slot" do
    visit status_slots_url
    click_on "New status slot"

    fill_in "License plate", with: @status_slot.license_plate
    fill_in "Slots", with: @status_slot.slots
    check "Status" if @status_slot.status
    fill_in "Vehicle type", with: @status_slot.vehicle_type
    click_on "Create Status slot"

    assert_text "Status slot was successfully created"
    click_on "Back"
  end

  test "should update Status slot" do
    visit status_slot_url(@status_slot)
    click_on "Edit this status slot", match: :first

    fill_in "License plate", with: @status_slot.license_plate
    fill_in "Slots", with: @status_slot.slots
    check "Status" if @status_slot.status
    fill_in "Vehicle type", with: @status_slot.vehicle_type
    click_on "Update Status slot"

    assert_text "Status slot was successfully updated"
    click_on "Back"
  end

  test "should destroy Status slot" do
    visit status_slot_url(@status_slot)
    click_on "Destroy this status slot", match: :first

    assert_text "Status slot was successfully destroyed"
  end
end
