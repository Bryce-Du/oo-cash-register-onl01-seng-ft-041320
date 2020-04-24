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
    if (discount == 0)
      puts "There is no discount to apply."
    else
      hundred_float = 100.0
      pay_percent = (hundred_float - discount.to_f)/hundred_float
      @total *= pay_percent
      puts "After the discount, the total comes to $#{@total}."
  end
end
