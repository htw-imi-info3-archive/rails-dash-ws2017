class Order < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  has_many :pumpkins, through: :line_items
  # has_many(:pumpkins, {through: :line_items})

  def total_price
     result = 0;
     pumpkins.each do |pumpkin|
        result += pumpkin.price
     end
     return result
  end
end
