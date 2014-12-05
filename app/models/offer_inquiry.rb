class OfferInquiry < ActiveRecord::Base
  belongs_to :offer

  validates :name,    presence: true
  validates :email,   presence: true
  validates :message, presence: true
end
