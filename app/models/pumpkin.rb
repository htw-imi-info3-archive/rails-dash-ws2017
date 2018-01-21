class Pumpkin < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items
  has_many :comments, dependent: :destroy

  def price_dollar
    self.price  ||= 0.0
    price*1.223
  end
  def price_yen
    self.price ||= 0.0
    price*135.380
  end
  def price_sek
    self.price  ||= 0.0
    price*9.83
  end
  def price_rubel
    self.price  ||= 0.0
    price*69.351
  end
  def size_inch
    self.size  ||= 0.0
    size*39.37
  end
  def weight_lbs
    self.weight  ||= 0.0
    weight*2.204
  end
  def is_carved
    if self.carved == true
      return 'yes'
    else
      return 'no'
    end
  end
end
