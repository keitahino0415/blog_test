class Article < ApplicationRecord
  #titleを重複許さんやつに設定
  validates :title, uniqueness:true

  #titleを15文字以上は許さんやつに設定
  validates :title, length: {maximum:15}

  #textを30文字以上は許さんやつに設定
  validates :text, length: {maximum:30}
end
