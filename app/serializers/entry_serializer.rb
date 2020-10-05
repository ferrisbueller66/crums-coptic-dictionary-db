class EntrySerializer < ActiveModel::Serializer
  attributes :id, :starting_page, :lemma, :pos
  belongs_to :chapter
  has_many :meanings
end
