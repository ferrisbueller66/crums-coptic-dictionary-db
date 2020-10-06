class Entry < ApplicationRecord
    belongs_to :chapter
    has_many :meanings
    validates :starting_page, :lemma, :pos, presence: true
    accepts_nested_attributes_for :chapter, reject_if: :all_blank
end
