Spree::ShippingMethod.class_eval do

  validate :self_delivery_uniqueness

  def self.self_delivery
    joins(:calculator).where('spree_calculators.type' => 'Spree::Calculator::SelfDelivery').first
  end

  def self_delivery?
    calculator[:type] == 'Spree::Calculator::SelfDelivery'
  end
  
  private

  def self_delivery_uniqueness
    errors.add(:base, I18n.t(:self_delivery_shipping_method_exists)) if calculator.type == 'Spree::Calculator::SelfDelivery' && Spree::ShippingMethod.self_delivery && Spree::ShippingMethod.self_delivery.id != id
  end

end
