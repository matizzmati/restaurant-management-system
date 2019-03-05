require 'test_helper'

class PizzasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pizza = pizzas(:one)
  end

  test "should get index" do
    get pizzas_url
    assert_response :success
  end

  test "should get new" do
    get new_pizza_url
    assert_response :success
  end

  test "should create pizza" do
    assert_difference('Pizza.count') do
      post pizzas_url, params: { pizza: { ingredients: 'ser, kiełbasa, salami, rukola', name: 'Wypasiona', price: 10.10 } }
    end

    assert_redirected_to pizza_url(Pizza.last)
    assert_equal 'Pizza was successfully created.', flash[:notice]
  end

  test "shouldn't create pizza" do
    assert_no_difference('Pizza.count') do
      post pizzas_url, params: { pizza: { ingredients: 'ser, kiełbasa, salami, rukola', name: 'Wypasiona', price: 'price' } }
      assert_select '#error_explanation ul li', 'Price is not a number'
    end
  end

  test "should show pizza" do
    get pizza_url(@pizza)
    assert_response :success
  end

  test "should get edit" do
    get edit_pizza_url(@pizza)
    assert_response :success
  end

  test "should update pizza" do
    patch pizza_url(@pizza), params: { pizza: { ingredients: @pizza.ingredients, name: @pizza.name, price: @pizza.price } }
    assert_redirected_to pizza_url(@pizza)
    assert_equal 'Pizza was successfully updated.', flash[:notice]
  end

  test "should destroy pizza" do
    assert_difference('Pizza.count', -1) do
      delete pizza_url(@pizza)
    end

    assert_redirected_to pizzas_url
    assert_equal 'Pizza was successfully destroyed.', flash[:notice]
  end
end
