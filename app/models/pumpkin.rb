class Pumpkin < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items
  has_many :comments, dependent: :destroy
    
    def self.search(search)
        where("carved LIKE ?", "%#{search}%") 
    end
    
end
