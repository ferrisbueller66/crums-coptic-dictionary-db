class Dialect < ApplicationRecord
    has_many :dialectical_forms
    validates :name, presence: true
end
