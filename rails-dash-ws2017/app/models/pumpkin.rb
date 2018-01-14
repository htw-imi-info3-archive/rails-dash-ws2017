class Pumpkin < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items


  def self_sort(sort)
    # # if
    # # else
    # #   all
    #
    # end
  end
end
