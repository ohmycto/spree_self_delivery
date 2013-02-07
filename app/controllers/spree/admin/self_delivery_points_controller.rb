module Spree
  module Admin
    class SelfDeliveryPointsController < ResourceController
      before_filter :load_data, :only => [:new, :create, :edit, :update]

      def index
        @self_delivery_points = SelfDeliveryPoint.ordered
      end
      
      private

      def load_data
        @self_delivery_point.country ||= Country.find_by_id(Spree::Config[:default_country_id])
        @countries = Country.order(:name)
      end
    end
  end
end
