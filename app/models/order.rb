class Order < ActiveRecord::Base
  belongs_to :section
  belongs_to :teacher
  belongs_to :user
  has_many :items, through: :transactions
  has_many :transactions
  
  before_validation :add_section_time
  
  validates_associated :transactions
  validates :transactions, presence: true
  validates :user, presence: true
  validates :section, presence: true
  validates :orderDate, presence: true
  validate :before_period?
  
  #allows transaction to be built but rejects if zero or blank
  #allows transactions to be deleted from the form
  accepts_nested_attributes_for :transactions, 
    reject_if: :reject_zero,
    :allow_destroy => true
   
  #rejects new transaction if the quantity is blank or zero 
  def reject_zero(attributes)
    attributes['quantity'] == '0' || attributes['quantity'].blank?
  end
  
  #add the section's time to the order date
  def add_section_time
    orderDate = self.orderDate
    sectionTime = self.section.startTime
    self.orderDate = DateTime.new(orderDate.year, orderDate.month, orderDate.day, sectionTime.hour, sectionTime.min)
  end
      
  #returns the total price of an order
  def total_price
    total = 0
    self.transactions.each do |t|
      total += t.price
    end
    total
  end
  
  #checks if the date and period specified is prior
  def before_period?
    if Time.now >= self.orderDate 
      errors.add(:orderDate, "Can't be in the past")
    end
  end

  #Search field for orders  
  def self.search(search)
      if search
          joins(:teacher).where("teachers.name LIKE ?", "%#{search}%").order("orderDate ASC")
      else
          order("orderDate ASC").all
      end
  end
end
