class AddMainImageToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :main_image, :text
  end
end
