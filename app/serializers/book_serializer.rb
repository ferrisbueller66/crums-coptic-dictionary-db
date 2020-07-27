class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :language, :year
  has_many :chapters
  has_many :pages, through: :chapters

end
