ActiveAdmin.register BxBlockEvent::Event, as: "Event"do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  menu priority: 1, label: 'Group Classes', parent: 'Group events'
  permit_params :link, :name, :event_date, :event_time, :description, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:link, :name, :event_date, :event_time, :description, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
