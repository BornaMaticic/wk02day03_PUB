require('minitest/autorun')
require('minitest/rg')
require_relative('../customer_lab.rb')
require_relative('../drink_lab.rb')


class TestCustomer < Minitest::Test

  def setup
    @customer1 = Customer.new("Tam", 20, 18)
    @customer2 = Customer.new("Jill", 50, 17)


    # @the_pub = Pub.new("Cheers", 500, [@drink1, @drink2])

    drink = [@drink1, @drink2]

    @drink1 = Drink.new("Jack Daniels", 5)
    @drink2 = Drink.new("Guinness", 6)
  end

  def test_customer_name()
    assert_equal("Tam", @customer1.name)
  end

  def test_customer_wallet_balance
    assert_equal(50, @customer2.get_wallet_balance)
  end

  def test_customer_buys_drink
    @customer1.customer_buys_drink(@drink1)
    expected = 15
    actual = @customer1.get_wallet_balance()
    assert_equal(expected, actual )
  end



  #
  # def test_customer_age__accepted
  #   assert_equal
  # end



  # def test_customer_age__declined
  #   assert_equal(17, )
  # end

end
