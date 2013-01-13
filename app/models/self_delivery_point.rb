class SelfDeliveryPoint < ActiveRecord::Base

  belongs_to :country
  belongs_to :state

  validates :country, :city, :address1, :presence => true
  validate :state_or_state_name

  def full_address
    [country.try(:name), state.try(:name), city, address1].join(', ')
  end

  private

  def state_or_state_name
    return unless country.present?
    if country.states.exists?
      self.state_name = nil
      errors.add(:state, :invalid) if state.blank? || state.country_id != country.id
    else
      self.state_id = nil
      errors.add(:state, :invalid) if state_name.blank?
    end
  end
end
