class Search < ActiveRecord::Base
    
    def condenseOrder
        condensed(orders)
    end
    
    def orders
        @orders ||= find_orders
    end
    
    private
    
    def find_orders
        orders = Order.all
        orders = orders.where("name LIKE ?", "%#{customer}%") unless customer.blank?
        orders = orders.where("teacher_id = ?", teacher_id) unless teacher_id.blank?
        orders = orders.where("section_id = ?", section_id) unless section_id.blank?
        orders = orders.where("day = ?", day)
        orders = orders.order("teacher_id ASC")
    end
    
    def condensed(orders)
        
    end
    
    
end
