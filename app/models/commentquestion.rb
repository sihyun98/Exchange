class Commentquestion < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :question
    has_many :cocoquestions, :dependent => :destroy
end
