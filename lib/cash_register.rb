class CashRegister

  attr_accessor :total, :discount, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(item, price, quantity = 1)
      @price = price
      @total += price * quantity
      if quantity > 1
        counter = 0
        while counter < quantity
          @items << item
          counter += 1
        end
      else
        @items << item
      end
    end




  def apply_discount
<<<<<<< HEAD

    if @discount > 0
      @discount_amount = (self.total * @discount)/100
      self.total -= @discount_amount
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
=======
  if discount
      total_with_discount = @total * discount / 100.0
  end
    return @total - total_with_discount
  else
    puts "There is no discount to apply."
>>>>>>> 3b760bde12111b5f133e77eff83ab2634c78c4a5
  end

  def items
     @items
  end

  def void_last_transaction
     @total -= @price
  end

  end
  #end class
