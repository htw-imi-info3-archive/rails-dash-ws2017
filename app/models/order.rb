class Order < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  has_many :pumpkins, through: :line_items

  def Sum
    total = 0
    line_items.each do |item|
      total = total + item.price
    end
    return total
  end

end
