class Club < ApplicationRecord
     has_many :commentclubs, :dependent => :destroy 
end
