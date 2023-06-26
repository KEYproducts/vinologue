class Brilliance < ActiveHash::Base
  self.data = [
    { id: 1, option: '輝きのある' },
    { id: 2, option: '落ち着いた' },
    { id: 3, option: 'モヤがかった' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
