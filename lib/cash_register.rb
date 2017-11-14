
class CashRegister

attr_accessor :total, :discount, :items, :last_trans


def initialize(discount=0)
  @items=[]
@total = 0
@discount= discount.to_f
end

def add_item(title, price, quantity=1)
  self.total = total + (price*quantity)
  quantity.times do self.items << title
  end
  self.last_trans = price*quantity
end

def apply_discount
@total = total-(total*@discount.to_i/100.to_f)
if @total < 0
  "There is no discount to apply."
else
  "After the discount, the total comes to $#{@total}."
end
end



def void_last_transaction
@total=total-self.last_trans
end




end
