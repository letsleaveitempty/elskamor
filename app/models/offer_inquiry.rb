class OfferInquiry < ActiveRecord::Base
  belongs_to :offer

  validates :name,    presence: { message: 'name' }
  validates :email,   presence: { message: 'email' }
  validates :message, presence: { message: 'message' }
end
