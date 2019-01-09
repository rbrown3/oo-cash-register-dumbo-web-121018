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
  #not needed using attr_accessor
  #def total
   # return @total
  #  puts "The Current Total is $#{@total}."
  #end

  # #def add_item(item, price, quantity = 1)
  #   @sub_total = price * quantity
  #
  #   self.total += @sub_total
  #     if quantity > 1
  #       while quantity > 0
  #        @items << item
  #        quantity -= 1
  #       end
  #     elsif
  #       @items << item
  #   end
  # #end

  def apply_discount

    if @discount > 0
      @discount_amount = (self.total * @discount)/100
      self.total -= @discount_amount
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
     @items
  end

  def void_last_transaction
     @total -= @price
  end

  end#end class
