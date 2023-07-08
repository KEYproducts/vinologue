class Alcohol < ActiveHash::Base
  self.data = [
    { id: 1, option: '軽い' },
    { id: 2, option: 'やや軽め' },
    { id: 3, option: '中程度' },
    { id: 4, option: 'やや強め' },
    { id: 5, option: '強い' },
    { id: 6, option: '熱さを感じる' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
