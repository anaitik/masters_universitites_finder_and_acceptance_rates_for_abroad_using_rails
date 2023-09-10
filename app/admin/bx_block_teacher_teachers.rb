ActiveAdmin.register BxBlockTeacher::Teacher,as: "Teacher" do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  menu priority: 1, label: 'Teachers', parent: 'Students & Teacher Info'
  permit_params :name, :full_phone_number, :address
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :full_phone_number, :address]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
