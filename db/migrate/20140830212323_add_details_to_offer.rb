class AddDetailsToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :title, :string
    add_column :offers, :short_teaser, :text
    add_column :offers, :country, :string
    add_column :offers, :city, :string
    add_column :offers, :address, :string
  end
end
