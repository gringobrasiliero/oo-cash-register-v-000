
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

end


def void_last_transaction

end




end
