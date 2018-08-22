class Cocomatching < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :commentmatching
end
