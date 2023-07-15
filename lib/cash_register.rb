class CashRegister
    attr_accessor :total, :discount, :items 

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        # @reciept = []
        @last_price = 0
    end

    def add_item(title,price,quantity = 1)
      
        self.total += (price * quantity)
        quantity.times { self.items << title }
        @last_price = price * quantity
        

        
    end

    def apply_discount
        if @discount > 0
            self.total -= (self.total * self.discount / 100)
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def last_price
        @last_price
    end

    def void_last_transaction
        self.total -= self.last_price
    end
end


# grocery = CashRegister.new
# grocery.add_item("cake", 20, 3)
# grocery.add_item("pen", 20)
# grocery.add_item("eggs", 17, 1)

# puts grocery.items
# puts grocery.reciept.pop

# puts grocery.total += grocery.reciept.pop

# puts add_item("cake", 20, 3)
# add_item("toothpaste", 100, 1)
