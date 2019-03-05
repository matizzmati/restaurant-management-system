require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  test "should not save pizza without name" do
    pizza = Pizza.new
    assert !pizza.save
  end

  test "should not save pizza with wrong price format" do
    pizza = Pizza.new(name: 'Redridge', price: '20e10-1', ingredients: 'boar liver, spider web')
    assert !pizza.save
  end
end
