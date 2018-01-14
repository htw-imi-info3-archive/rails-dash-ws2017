class LineItem < ApplicationRecord
  belongs_to :order
  belongs_to :pumpkin
  def price
    amount * pumpkin.price
  end
end
