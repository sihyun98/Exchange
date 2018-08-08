class Commentclub < ApplicationRecord
    belongs_to :club
    has_many :cocommentclubs, :dependent => :destroy 
end
