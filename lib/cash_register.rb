class CashRegister
  attr_accessor :total, :discount, :items, :oldtotal
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item (title, price, quantity = 1)
    @items << title
    @oldtotal = @total
    @total += price*quantity
  end
  
  def apply_discount
    pay_percent = (100.0-discount)
  end
end
