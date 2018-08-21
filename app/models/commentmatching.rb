class Commentmatching < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :matching
    has_many :cocomatchings, :dependent => :destroy
end
