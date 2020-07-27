class Book < ApplicationRecord
    has_many :chapters, :dependent => :destroy 
    has_many :pages, through: :chapters
end
