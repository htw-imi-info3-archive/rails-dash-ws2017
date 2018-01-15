class Order < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  has_many :pumpkins, through: :line_items
  # has_many(:pumpkins, {through: :line_items})

  def insgesamt
      ins = 0
      line_items.each { |li| ins += li.price  }
      return ins
    end

end
