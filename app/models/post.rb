class Post < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :author, class_name: 'User', foreign_key: 'author_user_id'

  # mount_uploader :main_image, MainImageUploader

end
