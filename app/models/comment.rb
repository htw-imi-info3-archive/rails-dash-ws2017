class Comment < ApplicationRecord
  belongs_to :pumpkin
    
    def self.addLike
        self[:likes] += 1
    end
end
