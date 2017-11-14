
class CashRegister

attr_accessor :total, :discount, :items, :last_trans


def initialize(discount=0)
  @items=[]
@total = 0
@discount= discount.to_f
end









end
