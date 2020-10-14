class Book < ApplicationRecord
  has_many   :comments
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates  :image
    validates  :title
  end  
end
