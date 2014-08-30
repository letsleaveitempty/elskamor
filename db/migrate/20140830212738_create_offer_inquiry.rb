class CreateOfferInquiry < ActiveRecord::Migration
  def change
    create_table :offer_inquiries do |t|
      t.string  :email
      t.string  :phone
      t.text    :message
      t.integer :offer_id
    end
  end
end
