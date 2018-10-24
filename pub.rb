class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def number_of_drinks
    @drinks.count
  end

  def add_money_to_till(money)
    @till += money
  end

  def buy_drink
    sold_drink = drinks.pop
    add_money_to_till(sold_drink.price)
    return sold_drink
  end


  



end
