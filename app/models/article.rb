class Article < ApplicationRecord
  validates :title, uniqueness:true
  validates :title, length: {maximum:15}
#  validates :text, length: {maximum:30}
end
