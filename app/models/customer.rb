class Customer < ApplicationRecord
  has_many :orders

  def total_order_price
     result = 0;
     orders.each do |order|
        order.pumpkins.each do |pumpkin|
           result += pumpkin.price
        end
     end
     return result
  end

end
