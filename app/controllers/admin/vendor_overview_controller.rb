class Spree::Admin::VendorOverviewController < Spree::BaseController
  ssl_required

  helper :search
  helper 'admin/navigation'
  layout 'admin'

  before_filter :vendor

  def vendor
    if !current_spree_user.has_spree_role?("vendor")
      unauthorized
    end
  end
  def index

  end
end
