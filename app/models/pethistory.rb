class Pethistory < ApplicationRecord
  belongs_to :pet

  def owner
    pet.client.name
  end
  
end
