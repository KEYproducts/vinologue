class Evaluation < ActiveHash::Base
  self.data = [
    { id: 1, option: 'シンプル、フレッシュ感を楽しむ' },
    { id: 2, option: 'エレガントでミネラリー' },
    { id: 3, option: 'なめらかでバランスが良い' },
    { id: 4, option: '複雑性があり引き締まった' },
    { id: 5, option: '成熟度が高く豊か' },
    { id: 6, option: '濃縮し力強い' }
  ]

  include ActiveHash::Associations
  has_many :tasting_sheets
end
