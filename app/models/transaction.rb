class Transaction < ActiveRecord::Base
    belongs_to :order
    belongs_to :item
    
    def price
        item = self.item
        quantity = self.quantity
        
        item.price * quantity
    end
end
