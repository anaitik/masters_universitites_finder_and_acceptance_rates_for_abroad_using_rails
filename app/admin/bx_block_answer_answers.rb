ActiveAdmin.register BxBlockAnswer::Answer,as:"Answer" do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  menu priority: 3, label: 'Answers', parent: 'Test Question & Answers' 
  permit_params :content, :question_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:content, :question_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
