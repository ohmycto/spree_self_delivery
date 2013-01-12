Deface::Override.new(:virtual_path => "admin/shared/_configuration_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                     :partial => "admin/shared/configuration_menu_pickup_points",
                     :name => "configuration_menu_pickup_points")