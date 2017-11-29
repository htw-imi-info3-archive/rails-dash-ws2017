require 'test_helper'

class PumpkinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pumpkin = pumpkins(:one)
  end

  test "should get index" do
    get pumpkins_url
    assert_response :success
  end

  test "should get new" do
    get new_pumpkin_url
    assert_response :success
  end

  test "should create pumpkin" do
    assert_difference('Pumpkin.count') do
      post pumpkins_url, params: { pumpkin: { carved: @pumpkin.carved, price: @pumpkin.price, size: @pumpkin.size, species: @pumpkin.species, weight: @pumpkin.weight } }
    end

    assert_redirected_to pumpkin_url(Pumpkin.last)
  end

  test "should show pumpkin" do
    get pumpkin_url(@pumpkin)
    assert_response :success
  end

  test "should get edit" do
    get edit_pumpkin_url(@pumpkin)
    assert_response :success
  end

  test "should update pumpkin" do
    patch pumpkin_url(@pumpkin), params: { pumpkin: { carved: @pumpkin.carved, price: @pumpkin.price, size: @pumpkin.size, species: @pumpkin.species, weight: @pumpkin.weight } }
    assert_redirected_to pumpkin_url(@pumpkin)
  end

  test "should destroy pumpkin" do
    assert_difference('Pumpkin.count', -1) do
      delete pumpkin_url(@pumpkin)
    end

    assert_redirected_to pumpkins_url
  end
end
