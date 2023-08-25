ActiveAdmin.register AccountBlock::Account, as: "User Account" do
  permit_params :email, :password, :role, :customer_code, :first_name, :teacher_id
  


  index do
    selectable_column
    column :id
    column "Name", :first_name
    column :email
    
   
    actions
  end
  

    show do
    attributes_table do
      row :id
      row :first_name, label: "Name"
      row :email
  
      
    end
  end


  filter :email
  


  form do |f|
    f.inputs "User Account Details" do
      f.input :first_name, label: "Name"
      f.input :email
      f.input :password
      f.input :teacher_id

      
    end
    f.actions
  end

end
