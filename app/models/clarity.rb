class Clarity < ActiveHash::Base
  self.data = [
    { id: 1, option: '澄んだ' },
    { id: 2, option: 'やや濁った' },
    { id: 3, option: '濁った' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
