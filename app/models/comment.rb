class Comment < ApplicationRecord
  belongs_to :pumpkin


  def pumpkin_species_to_param
      return Pumpkin.species
   end







  def self.search(search)



    if search
      where("content LIKE ?", "%#{search}%")
    else

    all
    end


  end


end
