ActiveAdmin.register BxBlockQuestion::Question,as:"Question" do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  menu priority: 2, label: 'Questions', parent: 'Test Question & Answers' 
  permit_params :content, :test_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:content, :test_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
