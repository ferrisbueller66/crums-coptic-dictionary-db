class DialectSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :dialectical_forms
  has_many :references
end
