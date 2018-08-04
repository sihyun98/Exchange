class Matching < ApplicationRecord
    has_many :commentmatchings, :dependent => :destroy
end
