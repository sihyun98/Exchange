class Cococlub < ApplicationRecord
    resourcify
    belongs_to :cocomentclub
    belongs_to :user
end
