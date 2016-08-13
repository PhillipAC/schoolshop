class Item < ActiveRecord::Base
    has_many :orders, through: :transactions
    has_many :transactions
    
    validates :name, presence: true
    validates :price, presence: true
    validates :description, presence: true
    
    def name_and_price
        self.name + " $" + self.price.to_s
    end
end
