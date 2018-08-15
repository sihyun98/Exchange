class Club < ApplicationRecord
    resourcify
    belongs_to :user
     has_many :commentclubs, :dependent => :destroy 
end
