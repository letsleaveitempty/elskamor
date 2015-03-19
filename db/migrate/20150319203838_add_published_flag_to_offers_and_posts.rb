class AddPublishedFlagToOffersAndPosts < ActiveRecord::Migration
  def change
    add_column :offers, :published, :boolean
    add_column :posts,  :published, :boolean
  end
end
