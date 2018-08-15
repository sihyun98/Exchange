class Commentmatching < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :matching
end
