require "application_system_test_case"

class RegistersTest < ApplicationSystemTestCase
  setup do
    @register = registers(:one)
  end

  test "visiting the index" do
    visit registers_url
    assert_selector "h1", text: "Registers"
  end

  test "should create register" do
    visit registers_url
    click_on "New register"

    fill_in "Amount", with: @register.amount
    fill_in "Arrival time", with: @register.arrival_time
    fill_in "Departure time", with: @register.departure_time
    fill_in "License plate", with: @register.license_plate
    fill_in "Name", with: @register.name
    fill_in "Phone number", with: @register.phone_number
    fill_in "Slots", with: @register.slots
    fill_in "Vehicle type", with: @register.vehicle_type
    click_on "Create Register"

    assert_text "Register was successfully created"
    click_on "Back"
  end

  test "should update Register" do
    visit register_url(@register)
    click_on "Edit this register", match: :first

    fill_in "Amount", with: @register.amount
    fill_in "Arrival time", with: @register.arrival_time
    fill_in "Departure time", with: @register.departure_time
    fill_in "License plate", with: @register.license_plate
    fill_in "Name", with: @register.name
    fill_in "Phone number", with: @register.phone_number
    fill_in "Slots", with: @register.slots
    fill_in "Vehicle type", with: @register.vehicle_type
    click_on "Update Register"

    assert_text "Register was successfully updated"
    click_on "Back"
  end

  test "should destroy Register" do
    visit register_url(@register)
    click_on "Destroy this register", match: :first

    assert_text "Register was successfully destroyed"
  end
end
