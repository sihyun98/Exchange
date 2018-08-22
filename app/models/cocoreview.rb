class Cocoreview < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :coreview
end
