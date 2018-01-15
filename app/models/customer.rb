class Customer < ApplicationRecord
  has_many :orders

  def gesamtsumme
      gs = 0
      orders.each { |o| gs += o.insgesamt  }
      return gs
    end


end
