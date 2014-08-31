class AddZipcodeToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :zip_code, :integer
  end
end
