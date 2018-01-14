class Customer < ApplicationRecord
  has_many :orders

  def calcTotal

    var = 0

    orders.each do |order|

      var+=order.calcTotal

    end

    return var

  end
end
