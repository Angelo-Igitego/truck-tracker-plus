RailsAdmin.config do |config|

  config.main_app_name = Proc.new { |controller| [ "CargoTracker", "BackOffice - #{controller.params[:action].try(:titleize)}" ] }


  ### Popular gems integration


  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.included_models = [
    "User",
    "Container", 
    "Truck",
    "Port",
    "Customer", 
    "ShippingLine"
  ]

  config.model Container do
    label "Shipment"
    label_plural "Shipments list"
    configure :number do
      label "container number"
    end
  end

  config.model User do
    label "System user"
    label_plural "System users"
    weight 1
    configure :type do 
      label "Role"
    end
    include_fields :type, :first_name, :last_name, :gender, :phone, :email, :password, :password_confirmation, :driving_license_number, :nationality  
  end

  config.model Truck do
    weight 2
    label "Vehicle"
    label_plural "Vehicles"

    include_fields :unique_number, :license_number, :model, :tare
  end

  config.model Port do
    weight 3
    label "Shipping port"
    label_plural "Shipping Ports"
    include_fields :name, :country
  end
  config.model Container do
    weight 4
    # label " port"
    # label_plural "Shipping Ports"
    # include_fields :name, :country
  end

end
