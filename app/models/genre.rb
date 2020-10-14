class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '文学・小説' },
    { id: 3, name: 'コミック' },
    { id: 4, name: '雑誌' },
    { id: 5, name: 'ラノベ' },
    { id: 6, name: 'ビジネス' },
    { id: 7, name: '自己啓発' },
    { id: 8, name: '趣味' },
    { id: 9, name: '文芸' },
    { id: 10, name: '教育' },
    { id: 11, name: 'その他' }
  ]
  
  include ActiveHash::Associations
  has_many :books
  end