class Cocomentclub < ApplicationRecord
    resourcify
    belongs_to :user
    belongs_to :club
    has_many :cococlubs, :dependent => :destroy
end
