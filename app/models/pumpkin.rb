class Pumpkin < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items

  def self.search(search)
    if search
      Pumpkin.where(["species LIKE ?", "%#{search}%"])
    else
      all

    end
  end

end
