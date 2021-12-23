class Post < ApplicationRecord
  def self.search(keyword)
    # あいまい検索
    #   “?”に対してkeywordが順番に入る
    #   LIKEは、あいまい検索の意味で、“%”は、前後のあいまいという意味
    #   “#{keyword}”は、Rubyの式展開
    where('title LIKE ? OR body LIKE ?', "%#{keyword}%", "%#{keyword}%")
  end
end
