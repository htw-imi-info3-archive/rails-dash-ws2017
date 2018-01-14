class Customer < ApplicationRecord
  has_many :orders
  def total
    total=0
     orders.each do |order|
      total+=order.total
    end
    return total
  end
end
