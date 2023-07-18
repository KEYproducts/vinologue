class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: '赤' },
    { id: 2, name: '白' },
    { id: 3, name: 'ロゼ' },
    { id: 4, name: '泡' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :wines
end
