class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :entries
end
