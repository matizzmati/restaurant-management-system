require 'test_helper'

class PizzaTest < ActiveSupport::TestCase
  test "should not save restaurant without name" do
    restaurant = Restaurant.new
    assert !restaurant.save
  end

  test "should not save restaurant with wrong opening hours format" do
    restaurant = Restaurant.new(name: 'McChicken', address: 'San Andreas 10', openning_hours: '10:100 - 20:15')
    assert !restaurant.save
  end
end
