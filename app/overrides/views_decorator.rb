Deface::Override.new(:virtual_path => "admin/configurations/index",
                     :insert_bottom => "[data-hook='configuration']",
                     :partial => "admin/shared/configurations_self_delivery_points",
                     :name => "configurations_self_delivery_points")

Deface::Override.new(:virtual_path => "admin/shared/_configuration_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                     :partial => "admin/shared/configurations_menu_self_delivery_points",
                     :name => "configurations_menu_self_delivery_points")

Deface::Override.new(:virtual_path => "checkout/_address",
                     :replace => "hr.space",
                     :text => "",
                     :name => "remove_hr_from_checkout_address")

Deface::Override.new(:virtual_path => "checkout/_address",
                     :insert_before => ".form-buttons",
                     :partial => "checkout/self_delivery",
                     :name => "checkout_self_delivery")

# Should be included after spree_address_book js
Deface::Override.new(:virtual_path => "checkout/edit",
                     :insert_bottom => "#checkout",
                     :partial => "checkout/self_delivery_js",
                     :name => "checkout_self_delivery_js")


