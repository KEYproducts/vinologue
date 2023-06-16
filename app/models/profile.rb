class Profile < ApplicationRecord
  enum sex: { male: 1, female: 2, not_answer: 3 }
end
