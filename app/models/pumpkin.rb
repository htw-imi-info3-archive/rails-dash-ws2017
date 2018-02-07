class Pumpkin < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items

  def self.search(search)
     if(search)
        find(name: search)
     else
        find(:all)  
end
