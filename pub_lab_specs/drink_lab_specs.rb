require('minitest/autorun')
require('minitest/rg')
require_relative('../drink_lab.rb')


class TestDrink < Minitest::Test



  def test_drink_by_name
    drink = Drink.new("Jack Daniels", 5)
    expected = "Jack Daniels"
    actual = drink.name
    assert_equal(expected, actual)
  end

  def test_check_price
    drink = Drink.new("Jack Daniels", 5)
    expected = 5
    actual = drink.price
    assert_equal(expected, actual)
  end

end
