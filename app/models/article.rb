class Article < ApplicationRecord
  #重複許さんやつ
  validates :title, uniqueness:true

  #15文字以上は許さんやつ
  validates :title, length: {maximum:15}

  #30文字以上は許さんやつ
  validates :text, length: {maximum:30}
end
