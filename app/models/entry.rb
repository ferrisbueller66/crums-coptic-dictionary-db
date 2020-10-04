class Entry < ApplicationRecord
    
    validates :starting_page, :lemma, :pos, presence: true
end
