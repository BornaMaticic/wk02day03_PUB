class Customer

  attr_reader :name, :wallet

  def initialize(name_input, wallet_input, age_input)
    @name = name_input
    @wallet = wallet_input
    @age = age_input
  end

  def get_wallet_balance()
    @wallet
  end

  def customer_buys_drink(drink)
    @wallet -= drink.price
  end

  def get_customer_age
    @age
  end



  def customer_age_check
    if @age >= 18
      true
    else
      false
    end
  end

  def serve_customer(drink)
    if customer_age_check == true
      return customer_buys_drink(drink)
    else
      return false
    end
  end


  end
