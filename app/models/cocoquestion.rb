class Cocoquestion < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :commentquestion
end
