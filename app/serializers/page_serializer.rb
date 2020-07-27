class PageSerializer < ActiveModel::Serializer
  attributes :id, :pagination
  belongs_to :chapter
  has_many :entries
  
end
