class DialecticalForm < ApplicationRecord
    belongs_to :dialect
    has_many :entry_dialects
    validates :lexeme, presence: true
end
