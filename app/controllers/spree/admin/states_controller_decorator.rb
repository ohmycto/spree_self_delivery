Spree::Admin::StatesController.class_eval do
  def index
    respond_with(@collection) do |format|
      format.html
      format.js { render :partial => 'state_list' }
      format.json
    end
  end
end