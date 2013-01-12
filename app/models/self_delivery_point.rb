class SelfDeliveryPoint < ActiveRecord::Base

  belongs_to :country
  belongs_to :state

  validates :country, :state, :city, :address1, :presence => true

  def full_address
    [country.try(:name), state.try(:name), city, address1].join(', ')
  end
end
