class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :language, :year
  has_many :chapters
end
