class Pet < ApplicationRecord
    belongs_to :client
    has_many :pethistories

    def vet_visite
        pethistories.count
    end

    def height
        pethistories.height
    end
    
    def height_max
        pethistories.maximum(:height)
    end
    
    def weight_max
        pethistories.maximum(:weight)
    end

    def weight_average
        if pethistories.count >0
            pethistories.sum(:weight)/pethistories.count
        end
    end

    def height_average
        if pethistories.count >0
            pethistories.sum(:height)/pethistories.count
        end
    end
    
end
