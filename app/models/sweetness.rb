class Sweetness < ActiveHash::Base
  self.data = [
    { id: 1, option: 'ドライ' },
    { id: 2, option: 'ソフトな' },
    { id: 3, option: 'まろやか' },
    { id: 4, option: '豊かな' },
    { id: 5, option: '残糖がある' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
