ActiveAdmin.register BxBlockContact::Contact,as: "Contact" do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  menu priority: 3, label: 'Student Contact Details', parent: 'Students & Teacher Info'
  permit_params :firstName, :lastName, :phoneNumber, :emailAddress
  #
  # or
  #
  # permit_params do
  #   permitted = [:firstName, :lastName, :phoneNumber, :emailAddress]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
