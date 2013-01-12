CheckoutController.class_eval do
  before_filter :load_self_delivery_points, :only => [:edit, :update]

  def load_self_delivery_points
    # TODO some kind of ordering?
    @self_delivery_points = SelfDeliveryPoint.all
  end
end