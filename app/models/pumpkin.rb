class Pumpkin < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items
  has_many :comments, dependent: :destroy
    
    def self.searchForCarved(search)
        if search != ""
            if search == "true"
                search = true
            else
                search = false
            end
            where("carved LIKE ?", search)
        else
            where("carved LIKE ? OR carved LIKE ?", true, false)
        end
    end
    
end
