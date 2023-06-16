class Profile < ApplicationRecord
  belongs_to :user, optional: true
  
  enum sex: { male: 1, female: 2, not_answer: 3 }

  validates :sex,           presence: true
  validates :age,           numericality: { greater_than_or_equal_to: 20 }
  validates :prefecture_id, numericality: { other_than: 1 }
end
