ActiveAdmin.register AccountBlock::Account, as: "User Account" do
  permit_params :email, :password, :role, :customer_code, :first_name
  


  index do
    selectable_column
    column :id
    column "Name", :first_name
    column :email
    column :role
   
    actions
  end
  

    show do
    attributes_table do
      row :id
      row :first_name, label: "Name"
      row :email
      row :role
      
    end
  end


  filter :email
  


  form do |f|
    f.inputs "User Account Details" do
      f.input :first_name, label: "Name"
      f.input :email
      f.input :password
      f.input :role

      
    end
    f.actions
  end

end
