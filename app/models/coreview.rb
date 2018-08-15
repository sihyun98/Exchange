class Coreview < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :review 
end
