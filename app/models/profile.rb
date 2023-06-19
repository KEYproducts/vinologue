class Profile < ApplicationRecord
  belongs_to :user, optional: true

  enum sex: { male: 1, female: 2, not_answer: 3 }

  with_options presence: true do
    validates :sex
    validates :age, numericality: { only_integer: true, message: 'は半角数字で入力してください' },
                    inclusion: { in: 20..150, message: 'が20歳未満の方は登録できません' }
  end
  validates :prefecture_id, numericality: { other_than: 1, message: "を入力してください" }
end
