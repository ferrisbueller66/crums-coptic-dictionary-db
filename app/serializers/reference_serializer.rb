class ReferenceSerializer < ActiveModel::Serializer
  attributes :id, :source, :volume_book, :line_verse, :text_excerpt, :translation, :notes, :greek_equivalent,
  belongs_to :dialect
end
