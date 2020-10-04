class DialecticalForm < ApplicationRecord
    belongs_to :dialect
    validates :lexeme, presence: true
end
