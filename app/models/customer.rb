class Customer < ApplicationRecord
  has_many :orders

  def self.search(search)
    if search
      where("content LIKE ?", "%#{search}%")
    else
    all
    end
  end

end
