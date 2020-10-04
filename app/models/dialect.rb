class Dialect < ApplicationRecord
    has_many :dialectical_forms
    has_many :references
    validates :name, presence: true
end
