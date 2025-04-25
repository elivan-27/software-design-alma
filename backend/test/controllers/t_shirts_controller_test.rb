require "test_helper"

class TShirtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_shirt = t_shirts(:one)
  end

  test "should get index" do
    get t_shirts_url
    assert_response :success
  end

  test "should get new" do
    get new_t_shirt_url
    assert_response :success
  end

  test "should create t_shirt" do
    assert_difference("TShirt.count") do
      post t_shirts_url, params: { t_shirt: { color: @t_shirt.color, description: @t_shirt.description, name: @t_shirt.name, price: @t_shirt.price, size: @t_shirt.size, stock: @t_shirt.stock } }
    end

    assert_redirected_to t_shirt_url(TShirt.last)
  end

  test "should show t_shirt" do
    get t_shirt_url(@t_shirt)
    assert_response :success
  end

  test "should get edit" do
    get edit_t_shirt_url(@t_shirt)
    assert_response :success
  end

  test "should update t_shirt" do
    patch t_shirt_url(@t_shirt), params: { t_shirt: { color: @t_shirt.color, description: @t_shirt.description, name: @t_shirt.name, price: @t_shirt.price, size: @t_shirt.size, stock: @t_shirt.stock } }
    assert_redirected_to t_shirt_url(@t_shirt)
  end

  test "should destroy t_shirt" do
    assert_difference("TShirt.count", -1) do
      delete t_shirt_url(@t_shirt)
    end

    assert_redirected_to t_shirts_url
  end
end
