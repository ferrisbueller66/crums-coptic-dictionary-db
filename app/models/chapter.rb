class Chapter < ApplicationRecord
    has_many :entries
    validates :title, presence: true
end
