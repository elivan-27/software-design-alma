require "application_system_test_case"

class TShirtsTest < ApplicationSystemTestCase
  setup do
    @t_shirt = t_shirts(:one)
  end

  test "visiting the index" do
    visit t_shirts_url
    assert_selector "h1", text: "T shirts"
  end

  test "should create t shirt" do
    visit t_shirts_url
    click_on "New t shirt"

    fill_in "Color", with: @t_shirt.color
    fill_in "Description", with: @t_shirt.description
    fill_in "Name", with: @t_shirt.name
    fill_in "Price", with: @t_shirt.price
    fill_in "Size", with: @t_shirt.size
    fill_in "Stock", with: @t_shirt.stock
    click_on "Create T shirt"

    assert_text "T shirt was successfully created"
    click_on "Back"
  end

  test "should update T shirt" do
    visit t_shirt_url(@t_shirt)
    click_on "Edit this t shirt", match: :first

    fill_in "Color", with: @t_shirt.color
    fill_in "Description", with: @t_shirt.description
    fill_in "Name", with: @t_shirt.name
    fill_in "Price", with: @t_shirt.price
    fill_in "Size", with: @t_shirt.size
    fill_in "Stock", with: @t_shirt.stock
    click_on "Update T shirt"

    assert_text "T shirt was successfully updated"
    click_on "Back"
  end

  test "should destroy T shirt" do
    visit t_shirt_url(@t_shirt)
    click_on "Destroy this t shirt", match: :first

    assert_text "T shirt was successfully destroyed"
  end
end
