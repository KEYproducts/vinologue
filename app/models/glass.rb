class Glass < ActiveHash::Base
  self.data = [
    { id: 1, option: '小ぶり' },
    { id: 2, option: '中庸' },
    { id: 3, option: '大ぶり' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
