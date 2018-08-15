class Commentinfo < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :info
end
