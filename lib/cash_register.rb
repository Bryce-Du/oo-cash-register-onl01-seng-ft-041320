class CashRegister
  attr_accessor :total :discount
  
  def initialize (discount)
    @total = 0
    @discount = discount
  end
end
