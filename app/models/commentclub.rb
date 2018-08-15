class Commentclub < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :club
    
end
