Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                     :partial => "spree/admin/shared/configurations_menu_self_delivery_points",
                     :name => "configurations_menu_self_delivery_points")

Deface::Override.new(:virtual_path => "spree/checkout/_address",
                     :replace => "code[erb-loud]:contains('order[use_billing]')",
                     :text => "<%= check_box_tag 'order[use_billing]', '1', (!(@order.bill_address.empty? && @order.ship_address.empty?) && @order.bill_address.same_as?(@order.ship_address))",
                     :name => "replace_checkout_use_billing_checkbox")

Deface::Override.new(:virtual_path => "spree/checkout/_address",
                     :insert_before => ".form-buttons",
                     :partial => "spree/checkout/self_delivery",
                     :name => "checkout_self_delivery")

# Should be included after spree_address_book js
Deface::Override.new(:virtual_path => "spree/checkout/edit",
                     :insert_bottom => "#checkout",
                     :partial => "spree/checkout/self_delivery_js",
                     :name => "checkout_self_delivery_js")


