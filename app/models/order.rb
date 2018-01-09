class Order < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  has_many :pumpkins, through: :line_items
  # has_many(:pumpkins, {through: :line_items})
  
  
  def total
	sum = 0
	line_items.each do |li|
		sum = sum + (li.pumpkin.price * li.amount)
	end
	sum = sum
  end
  
end