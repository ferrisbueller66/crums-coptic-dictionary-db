class MeaningSerializer < ActiveModel::Serializer
  attributes :id, :lexical_entry, :translation_value
  belongs_to :entry
end
