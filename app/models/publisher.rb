class Publisher < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '講談社' },
    { id: 3, name: '集英社' },
    { id: 4, name: 'KADOKAWA' },
    { id: 5, name: '小学館' },
    { id: 6, name: 'ゼンリン' },
    { id: 7, name: '日経BP' },
    { id: 8, name: '学研HD' },
    { id: 9, name: '文藝春秋' },
    { id: 10, name: 'マガジンハウス' },
    { id: 11, name: 'ダイヤモンド社' },
    { id: 12, name: '朝日新聞出版' },
    { id: 13, name: '昭文社' },
    { id: 14, name: 'その他' }
  ]
  
  include ActiveHash::Associations
  has_many :books
  end