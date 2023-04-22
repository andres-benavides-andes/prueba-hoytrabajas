require "application_system_test_case"

class BancosTest < ApplicationSystemTestCase
  setup do
    @banco = bancos(:one)
  end

  test "visiting the index" do
    visit bancos_url
    assert_selector "h1", text: "Bancos"
  end

  test "should create banco" do
    visit bancos_url
    click_on "New banco"

    fill_in "Nombre", with: @banco.nombre
    click_on "Create Banco"

    assert_text "Banco was successfully created"
    click_on "Back"
  end

  test "should update Banco" do
    visit banco_url(@banco)
    click_on "Edit this banco", match: :first

    fill_in "Nombre", with: @banco.nombre
    click_on "Update Banco"

    assert_text "Banco was successfully updated"
    click_on "Back"
  end

  test "should destroy Banco" do
    visit banco_url(@banco)
    click_on "Destroy this banco", match: :first

    assert_text "Banco was successfully destroyed"
  end
end
