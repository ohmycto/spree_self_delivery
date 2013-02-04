class Admin::SelfDeliveryPointsController < Admin::ResourceController
  before_filter :load_data, :only => [:new, :create, :edit, :update]

  def index
    @self_delivery_points = SelfDeliveryPoint.ordered
  end

  def update_positions
    params[:positions].each do |id, index|
      SelfDeliveryPoint.where(:id => id).update_all(:position => index)
    end
    respond_to do |format|
      format.js  { render :text => 'Ok' }
    end
  end
  
  private

  def load_data
    @self_delivery_point.country ||= Country.find_by_id(Spree::Config[:default_country_id])
    @countries = Country.order(:name)
  end
end
