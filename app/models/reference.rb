class Reference < ApplicationRecord
    belongs_to :dialect
    has_many :meaning_references

    validates :source, :volume_book, presence: true
end
