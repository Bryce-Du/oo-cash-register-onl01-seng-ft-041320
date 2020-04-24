class CashRegister
  attr_accessor :total, :discount, :items, :subtotal
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item (title, price, quantity = 1)
    @items << title
    @subtotal = @total + price*quantity
  end
end
