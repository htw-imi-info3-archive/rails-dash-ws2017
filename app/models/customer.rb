class Customer < ApplicationRecord
  has_many :orders
    def sumOrders
      	sum = 0
     	orders.each do |order|
        		sum += order.Sum
        	end
      	return sum
      end
end
