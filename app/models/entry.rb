class Entry < ApplicationRecord
    belongs_to :chapter
    has_many :meanings
    has_many :entry_dialects

    has_and_belongs_to_many :entries,
    :joins_table => "entry_connections",
    :foreign_key => "entry_a_id",
    :associations_foreign_key => "entry_b_id"

    validates :starting_page, :lemma, :pos, presence: true
    accepts_nested_attributes_for :chapter, reject_if: :all_blank
end
