class Pumpkin < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items
  has_many :comments, dependent: :destroy
    
    def searchPumpkin (p)
    Pumpkin.find_by_sql("SELECT * FROM pumpkins
  WHERE name = p")
    end
    
end
