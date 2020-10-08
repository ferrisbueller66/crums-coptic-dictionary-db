class Reference < ApplicationRecord
    belongs_to :dialect
    has_many :meaning_references
    validates :source, :volume_book, presence: true
    accepts_nested_attributes_for :chapter, reject_if: :all_blank
end
