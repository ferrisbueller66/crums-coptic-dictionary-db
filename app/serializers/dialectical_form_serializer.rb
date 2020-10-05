class DialecticalFormSerializer < ActiveModel::Serializer
  attributes :id, :lexeme
  belongs_to :dialect
end
