class Notice < ApplicationRecord
    has_many :comments, :dependent => :destroy 
end
