class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :publisher

  validates :genre_id,      numericality: { other_than: 1 }
  validates :publisher_id,  numericality: { other_than: 1 }
  has_many   :comments
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates  :image
    validates  :title
    validates :genre_id, numericality: { other_than: 1 } 
  end  
end
