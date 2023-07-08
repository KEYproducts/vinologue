class ServingTemperature < ActiveHash::Base
  self.data = [
    { id: 1, option: '8度未満' },
    { id: 2, option: '8～10度' },
    { id: 3, option: '11～14度' },
    { id: 4, option: '15～18度' },
    { id: 5, option: '19度以上' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
