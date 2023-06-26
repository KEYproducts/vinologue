class Viscosity < ActiveHash::Base
  self.data = [
    { id: 1, option: 'さらっとした' },
    { id: 2, option: 'やや軽い' },
    { id: 3, option: 'やや強い' },
    { id: 4, option: '強い' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
