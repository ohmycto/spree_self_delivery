class Admin::SelfDeliveryPointsController < Admin::ResourceController
  before_filter :load_data, :only => [:new, :create, :edit, :update]

  private

  def load_data
    @self_delivery_point.country ||= Country.find_by_id(Spree::Config[:default_country_id])
    @countries = Country.order(:name)
  end
end
