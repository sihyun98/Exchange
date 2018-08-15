class Matching < ApplicationRecord
    
    resourcify
    belongs_to :user
    has_many :commentmatchings, :dependent => :destroy
end
