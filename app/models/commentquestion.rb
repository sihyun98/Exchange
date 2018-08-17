class Commentquestion < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :question
end
