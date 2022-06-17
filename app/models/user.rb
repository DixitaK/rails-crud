class User < ApplicationRecord
  validates :name, presence: true, length: { in:2..19}, format: { with: /\A[a-zA-Z," "]*\z/, message: "must contain only alphabets" }
  validates :age, presence: true, numericality:{in: 1..110}
  validates :gender, presence: true
end
