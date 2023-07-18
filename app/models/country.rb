class Country < ActiveHash::Base
  self.data = [
    { id: 1,  name: 'フランス' },
    { id: 2,  name: 'イタリア' },
    { id: 3,  name: 'ドイツ' },
    { id: 4,  name: 'スペイン' },
    { id: 5,  name: 'ポルトガル' },
    { id: 6,  name: 'アメリカ' },
    { id: 7,  name: 'オーストラリア' },
    { id: 8,  name: 'ニュージーランド' },
    { id: 9,  name: 'チリ' },
    { id: 10,  name: 'アルゼンチン' },
    { id: 11,  name: '南アフリカ' },
    { id: 12,  name: '日本' },
    { id: 13,  name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :wines
end
