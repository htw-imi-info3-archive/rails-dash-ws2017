class Order < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  has_many :pumpkins, through: :line_items
  # has_many(:pumpkins, {through: :line_items})



def calcTotal

  var = 0

  line_items.each do |line_item|

    var+=line_item.price

  end

  return var

end


end
