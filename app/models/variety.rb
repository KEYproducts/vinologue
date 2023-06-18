class Variety < ActiveHash::Base
  self.data = [
    { id: 1,  name: 'カベルネ・ソーヴィニョン' },
    { id: 2,  name: 'メルロー' },
    { id: 3,  name: 'カベルネ・フラン' },
    { id: 4,  name: 'ピノ・ノワール' },
    { id: 5,  name: 'ガメイ' },
    { id: 6,  name: 'シラー' },
    { id: 7,  name: 'グルナッシュ' },
    { id: 8,  name: 'ムールヴェードル' },
    { id: 9,  name: 'マルベック' },
    { id: 10,  name: 'ネッビオーロ' },
    { id: 11,  name: 'サンジョヴェーゼ' },
    { id: 12,  name: 'モンテプルチアーノ' },
    { id: 13,  name: 'バルベーラ' },
    { id: 14,  name: 'プリミティーヴォ' },
    { id: 15,  name: 'カルメネール' },
    { id: 16,  name: 'ジンファンデル' },
    { id: 17,  name: 'マスカット・ベーリーA' },
    { id: 18,  name: 'ピノタージュ' },
    { id: 19,  name: 'シャルドネ' },
    { id: 20,  name: 'ソーヴィニヨン・ブラン' },
    { id: 21,  name: 'セミヨン' },
    { id: 22,  name: 'シュナン・ブラン' },
    { id: 23,  name: 'ミュスカデ' },
    { id: 24,  name: 'ヴィオニエ' },
    { id: 25,  name: 'リースリング' },
    { id: 26,  name: 'ゲヴュルツトラミネール' },
    { id: 27,  name: 'ピノ・グリ' },
    { id: 28,  name: 'トレッビアーノ' },
    { id: 29,  name: 'アイレン' },
    { id: 30,  name: 'アルバリーニョ' },
    { id: 31,  name: 'トロンテス' },
    { id: 32,  name: '甲州' },
    { id: 33,  name: 'ピノ・ムニエ' },
    { id: 34,  name: 'プロセッコ' },
    { id: 35,  name: 'マカベオ' },
    { id: 36,  name: 'パレリャーダ' },
    { id: 37,  name: 'チャレッロ' }
  ]

  include ActiveHash::Associations
  has_many :wines
end