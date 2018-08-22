class Coconotice < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :comment
end
