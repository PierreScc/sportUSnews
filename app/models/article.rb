class Article < ApplicationRecord
  has_many :comments
  belongs_to :category, optional: true
end
