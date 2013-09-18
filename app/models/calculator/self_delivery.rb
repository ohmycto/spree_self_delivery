class Calculator::SelfDelivery < Calculator

  def self.description
    I18n.t :self_delivery
  end

  def compute(object)
    return nil if object.blank?
    object = object.order unless object.kind_of?(Order)
    object.self_delivery_point.try(:cost) || 0
  end
end
