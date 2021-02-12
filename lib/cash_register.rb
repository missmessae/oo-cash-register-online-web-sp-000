class CashRegister
  attr_accessor :total, :discount, :price, :items

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
  end


  def apply_discount
    if @discount > 0
      @total = (@total * @discount)/100
      puts "After the discount, the total comes to #{@total}."
    else
      puts "here is no discount to apply."
    end
  end


  def items
    @items
  end




end
