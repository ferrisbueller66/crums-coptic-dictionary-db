class Reference < ApplicationRecord
    belongs_to :dialect
    has_many :meaning_references
end
