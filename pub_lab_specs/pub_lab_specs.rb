require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../customer_lab.rb')
require_relative('../drink_lab.rb')



class TestPub < Minitest::Test

  def setup
    @drink1 = Drink.new("Jack Daniels", 5)
    @drink2 = Drink.new("Guinness", 6)

    @the_pub = Pub.new("Cheers", 500, [@drink1, @drink2])

    drinks = [@drink1, @drink2]

    @customer1 = Customer.new("Tam", 20, 18)
    @customer2 = Customer.new("Jill", 50, 17)

  end

  def test_pub_name
    assert_equal("Cheers", @the_pub.name)
  end

  def test_amount_in_pub_till
    assert_equal(500, @the_pub.till)
  end

  def test_pub_has_drinks
    assert_equal(2, @the_pub.number_of_drinks)
  end

  def test_customer_buys_drink
    drink = @the_pub.buy_drink
    assert_equal(@drink2.name, drink.name)
  end

  def test_customer_pays_for_drink
    assert_equal(20, @customer1.get_wallet_balance)
    @customer1.customer_buys_drink(@drink2)
    assert_equal(14, @customer1.get_wallet_balance)
  end

  def test_till_balance_increase
    assert_equal(506, @the_pub.add_money_to_till(@drink2.price))
  end

  def test_customer_age_check
    assert_equal(true, @customer1.customer_age_check)
  end

  def test_serve_customer__pass
    assert_equal(15, @customer1.serve_customer(@drink1))
  end

  def test_serve_customer__fail
    assert_equal(false, @customer2.serve_customer(@drink1))
  end

end
