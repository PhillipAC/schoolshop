class Section < ActiveRecord::Base
    has_many :orders
    
    def nameWithTime
        self.name + " " + self.startTime.strftime("%I:%M")
    end
end
