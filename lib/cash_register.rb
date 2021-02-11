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
    @items << title.times(qty)
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


    describe '#items' do
      it 'returns an array containing all items that have been added' do
        new_register = CashRegister.new
        new_register.add_item("eggs", 1.99)
        new_register.add_item("tomato", 1.76, 3)
        expect(new_register.items).to eq(["eggs", "tomato", "tomato", "tomato"])


end
