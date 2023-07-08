class Finish < ActiveHash::Base
  self.data = [
    { id: 1, option: '短い' },
    { id: 2, option: 'やや短い' },
    { id: 3, option: 'やや長い' },
    { id: 4, option: '長い' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
