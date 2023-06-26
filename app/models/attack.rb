class Attack < ActiveHash::Base
  self.data = [
    { id: 1, option: '軽い' },
    { id: 2, option: 'やや軽い' },
    { id: 3, option: 'やや強い' },
    { id: 4, option: '強い' },
    { id: 5, option: 'インパクトのある' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
