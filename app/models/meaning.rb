class Meaning < ApplicationRecord
    belongs_to :entry
    has_many :meaning_references
end
