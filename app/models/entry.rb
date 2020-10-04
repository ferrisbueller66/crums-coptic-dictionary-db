class Entry < ApplicationRecord
    belongs_to :chapter
    validates :starting_page, :lemma, :pos, presence: true
end
