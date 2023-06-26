class Bitterness < ActiveHash::Base
  self.data = [
    { id: 1, option: '控えめ' },
    { id: 2, option: '穏やかな' },
    { id: 3, option: 'コク(深み)を与える' },
    { id: 4, option: '旨味をともなった' },
    { id: 5, option: '強い(突出した)' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
