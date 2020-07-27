class EntrySerializer < ActiveModel::Serializer
  attributes :id, :lexeme, :dialects, :pos, :reference, :gloss, :notes
  belongs_to :page
end
