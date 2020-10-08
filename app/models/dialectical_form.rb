class DialecticalForm < ApplicationRecord
    belongs_to :dialect
    has_many :entry_dialects
    validates :lexeme, presence: true
    accepts_nested_attributes_for :dialect, reject_if: :all_blank
end
