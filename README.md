SpreeSelfDelivery
=================


Installation
-------

    Add to gemfile: `gem 'spree_self_delivery', :git => 'git://github.com/secoint/spree_self_delivery.git'`
   
    Run `bundle install`
    Run `rails g spree_self_delivery:install`
    Run `rake db:migrate`

    Create ShippingMethod with `self delivery` calculator 
    Go to `/admin/self_delivery_points` and create one or more self delivery points