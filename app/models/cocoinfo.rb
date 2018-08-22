class Cocoinfo < ApplicationRecord
    resourcify
    belongs_to :commentinfo
    belongs_to :user
end
