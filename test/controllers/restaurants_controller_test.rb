require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_url
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post restaurants_url, params: { restaurant: { address: 'Przykladowa 10', name: 'Italiana', openning_hours: '15:00 - 23:00' } }
    end
    assert_redirected_to restaurant_url(Restaurant.last)
    assert_equal 'Restaurant was successfully created.', flash[:notice]
  end

  test "should not create second restaurant with the same name" do
    assert_difference('Restaurant.count') do
      post restaurants_url, params: { restaurant: { address: 'Przykladowa 10', name: 'Italiana', openning_hours: '15:00 - 23:00' } }
    end
    assert_no_difference('Restaurant.count') do
      post restaurants_url, params: { restaurant: { address: 'Sobieskiego 1', name: 'Italiana', openning_hours: '07:00 - 20:00' } }
    end
  end

  test "shouldn't create restaurant" do
    assert_no_difference('Restaurant.count') do
      post restaurants_url, params: { restaurant: { address: 'Przykladowa 10', name: 'Buraczana', openning_hours: '15:00 - 23:000' } }
      assert_select '#error_explanation ul li', "Openning hours | Please, enter opening hours in correct format [example: 10:00 - 20:00]"
    end
  end

  test "should show restaurant" do
    get restaurant_url(@restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_url(@restaurant)
    assert_response :success
  end

  test "should update restaurant" do
    patch restaurant_url(@restaurant), params: { restaurant: { address: @restaurant.address, name: @restaurant.name, openning_hours: @restaurant.openning_hours } }
    assert_redirected_to restaurant_url(@restaurant)
    assert_equal 'Restaurant was successfully updated.', flash[:notice]
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete restaurant_url(@restaurant)
    end

    assert_redirected_to restaurants_url
    assert_equal 'Restaurant was successfully destroyed.', flash[:notice]
  end
end
