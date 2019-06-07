class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :content,class_name: 'Micropost'
end
