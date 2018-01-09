class Customer < ApplicationRecord
  has_many :orders
  
  def total
	sum = 0
	orders.each do |o|
		sum = sum + o.total
	end
	return sum
  end
  
end
