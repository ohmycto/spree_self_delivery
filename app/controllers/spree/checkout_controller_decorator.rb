Spree::CheckoutController.class_eval do
  before_filter :load_self_delivery_points, :only => [:edit, :update]

  private

  def load_self_delivery_points
    @self_delivery_points = Spree::SelfDeliveryPoint.ordered
  end

  # prevent spree_address_book gem to store user_id in address
  if self.method_defined?(:normalize_addresses)
    spree_address_book_normalize_addresses = instance_method(:normalize_addresses)
  
    define_method :normalize_addresses do
      if @order.self_delivery?
        return
      else
        spree_address_book_normalize_addresses.bind(self).call
      end
    end
  end
end