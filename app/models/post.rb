class Post < ActiveRecord::Base
  belongs_to :author, class_name: 'User', foreign_key: 'author_user_id'

  mount_uploader :main_image, MainImageUploader
end
