class Book < ApplicationRecord
  belongs_to :user
  has_many :borrow_histories
  validates :title, 
  :description, 
  :publish_date , presence: true
  validates :title, length: { maximum: 25 }
end
