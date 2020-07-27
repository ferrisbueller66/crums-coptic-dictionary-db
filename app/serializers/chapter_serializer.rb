class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :title
  belongs_to :book
    has_many :pages
    has_many :entries, through: :pages
end
