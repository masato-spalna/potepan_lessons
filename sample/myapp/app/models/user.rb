class User < ApplicationRecord
  has_many :posts
  varidates :name, presence: true
  validates :email, uniquness: true, presence: true
  varidates :age, numericality: true
  varidates :introduction, length: { in: 10..30 }
end
