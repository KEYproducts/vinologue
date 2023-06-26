class FirstImpression < ActiveHash::Base
  self.data = [
    { id: 1, option: '閉じている' },
    { id: 2, option: '控えめ' },
    { id: 3, option: '開いている' },
    { id: 4, option: '力強い' },
    { id: 5, option: 'フレッシュな' },
    { id: 6, option: 'チャーミングな' },
    { id: 7, option: '華やかな' },
    { id: 8, option: '濃縮感がある' },
    { id: 9, option: '深みのある' },
    { id: 10, option: '複雑な' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
