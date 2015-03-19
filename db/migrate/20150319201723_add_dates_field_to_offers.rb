class AddDatesFieldToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :dates, :string
  end
end
