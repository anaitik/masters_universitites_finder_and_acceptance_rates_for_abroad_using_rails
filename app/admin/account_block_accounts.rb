ActiveAdmin.register AccountBlock::Account, as: "User Account" do
  permit_params :email, :password, :activated, :customer_code, :first_name
  


  index do
    selectable_column
    column :id
    column "Name", :first_name
    column :email
    column :activated
   
    actions
  end
  

    show do
    attributes_table do
      row :id
      row :first_name, label: "Name"
      row :email
      row :activated
      
    end
  end


  filter :email
  filter :activated, as: :select, collection: [["Yes", true], ["No", false]]


  form do |f|
    f.inputs "User Account Details" do
      f.input :first_name, label: "Name"
      f.input :email
      f.input :password
      f.input :activated
      
    end
    f.actions
  end

end
