class Depth < ActiveHash::Base
  self.data = [
    { id: 1, option: '無色に近い' },
    { id: 2, option: '淡い' },
    { id: 3, option: 'やや濃い' },
    { id: 4, option: '濃い' },
    { id: 5, option: '非常に濃い' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
