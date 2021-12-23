class Post < ApplicationRecord
  def self.search(keyword)
    where('title LIKE ? OR body LIKE ?', "%#{keyword}%", "%#{keyword}%")
  end
end
