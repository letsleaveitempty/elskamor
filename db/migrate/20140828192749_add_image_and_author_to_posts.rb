class AddImageAndAuthorToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :author_user_id, :integer
    add_column :posts, :main_image, :string
  end
end
