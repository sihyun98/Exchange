class Coreview < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :review 
    has_many :cocoreviews, :dependent => :destroy
end
