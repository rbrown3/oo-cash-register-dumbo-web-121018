
class CashRegister
  attr_accessor :total ,:discount


  def initialize(total=0, discount=20)
    @total=total
    @discount=discount
  end

  def add_item(title, num, quantity=1)
  new_total =  num * quantity

    @total += new_total
  end

  def apply_discount
  if discount
      total_with_discount = @total * discount / 100.0
  end
    return @total - total_with_discount
  end
  def items
   items_array = []
 end
def void_last_transaction

end
end
