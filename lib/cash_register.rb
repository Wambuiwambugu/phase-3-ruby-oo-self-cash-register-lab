class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title,price,quantity = 0)
        if quantity > 0
            self.total += (price * quantity)
            quantity.times { @items << title }
        else
            self.total += price
            @items << title
        end 
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

    def void_last_transaction
        self.total -= self.items.pop
    end
end
