class CashRegister
  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end


  def total
    @current_total
  end


  def add_item(title, price, qty = 1)
    @current_total = @total + (price*qty)
    @current_total
  end






end
