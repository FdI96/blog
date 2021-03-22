class Article < ApplicationRecord
  has_many :comments, dependent: :delete_all
  # To make this works, on the destroy action, we need to also delete all the comments that belongs to that article
  # It affects the data integrity so we added the "dependent: :delete_all".
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
