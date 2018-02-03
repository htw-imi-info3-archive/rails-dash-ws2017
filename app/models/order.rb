class Order < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  has_many :pumpkins, through: :line_items
  # has_many(:pumpkins, {through: :line_items})

  def total
    line_items.collect(&:price).inject(&:+).to_f
  end
    
end
