class Question < ApplicationRecord
    belongs_to :user
    has_many :commentquestions, :dependent => :destroy 
end
