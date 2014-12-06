class Offer < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :offer_inquiries

end
