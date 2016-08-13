class Teacher < ActiveRecord::Base
    has_many :orders
    
    def name_and_number
        self.name + " (RM: " + self.room.to_s + ")"
    end
end
