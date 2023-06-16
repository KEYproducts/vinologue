class Profile < ApplicationRecord
  belongs_to :user, optional: true
  
  enum sex: { male: 1, female: 2, not_answer: 3 }

  with_options presence: true do
    validates :sex
    validates :age, numericality: { greater_than_or_equal_to: 20, message: "must be over 20. And input half-width characters" }
  end
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
end

