class AddNameToOfferInquiry < ActiveRecord::Migration
  def change
    add_column :offer_inquiries, :name, :string
  end
end
