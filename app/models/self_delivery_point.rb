class SelfDeliveryPoint < ActiveRecord::Base

  belongs_to :country
  belongs_to :state

  acts_as_list
  scope :ordered, order("#{SelfDeliveryPoint.table_name}.position ASC")
  
  validates :country, :city, :address1, :presence => true
  validate :state_or_state_name

  def full_address
    addr = []
    addr << country.try(:name) if show_country
    addr << (state.try(:name).presence || state_name) if show_state
    addr << address1
    addr.compact.join(', ')
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
