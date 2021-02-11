class CashRegister
  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end


  def total
    @total
  end


  def add_item(title, price, qty = 1)
    @items.concat([title]*qty)
    @total = @total + (price*qty)
    self.total
  end


  def apply_discount
    @total*0.2
    puts "After the discount, the total comes to #{self.total}."
  end

  def items
    @items
  end




end
