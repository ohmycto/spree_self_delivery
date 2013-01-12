ShippingMethod.class_eval do

  validate :self_delivery_uniqueness

  def self.self_delivery
    joins(:calculator).where('calculators.type' => 'Calculator::SelfDelivery').first
  end

  private

  def self_delivery_uniqueness
    errors.add(:base, I18n.t(:self_delivery_shipping_method_exists)) if calculator.type == 'Calculator::SelfDelivery' && ShippingMethod.self_delivery && ShippingMethod.self_delivery.id != id
  end

end
