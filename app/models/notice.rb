class Notice < ApplicationRecord
    resourcify
    belongs_to :user
    has_many :comments, :dependent => :destroy 
end
