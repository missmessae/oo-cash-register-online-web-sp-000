class CashRegister
  attr_accessor :cash_register, :total, :cash_register_with_discount

  def initialize(total)
    @total = 0
  end

  def discount
    @cash_register_with_discount = CashRegister.new
    
    
  end
  let(:cash_register) { CashRegister.new }
  let(:cash_register_with_discount) { CashRegister.new(20) }



end
