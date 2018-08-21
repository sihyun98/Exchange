class Commentinfo < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :info
    has_many :cocoinfos, :dependent => :destroy
end
