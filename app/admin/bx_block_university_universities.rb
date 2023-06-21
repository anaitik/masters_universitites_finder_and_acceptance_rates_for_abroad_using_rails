ActiveAdmin.register BxBlockUniversity::University,as: "University" do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :logo, :ios_logo, :name, :tuition, :gpa, :uni_type, :avg_salary, :rank, :country_name, :living_expenses, :gmat, :gre, :slug, :total_students, :address, :schools, :acceptance_rate_masters, :short_name
  #
  # or
  #
  # permit_params do
  #   permitted = [:logo, :ios_logo, :name, :tuition, :gpa, :uni_type, :avg_salary, :rank, :country_name, :living_expenses, :gmat, :gre, :slug, :total_students, :address, :schools, :acceptance_rate_masters, :short_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
