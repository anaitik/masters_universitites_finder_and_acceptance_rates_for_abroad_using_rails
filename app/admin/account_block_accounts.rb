ActiveAdmin.register AccountBlock::Account, as: "User Account" do
  permit_params :email, :password, :role, :customer_code, :first_name, :teacher_id , :phone_number, :course_id
  
  menu priority: 2, label: 'Students', parent: 'Students & Teacher Info'

  index do
    selectable_column
    column :id
    column "Name", :first_name
    column :email
    column :phone_number
    
   
    actions
  end
  

    show do
    attributes_table do
      row :id
      row :first_name, label: "Name"
      row :email
      row :phone_number
      
    end
  end


  filter :email
  filter :phone_number


  form do |f|
    f.inputs "User Account Details" do
      f.input :first_name, label: "Name"
      f.input :email
      f.input :password
      f.input :teacher_id, as: :select, collection: BxBlockTeacher::Teacher.all.map { |teacher| [teacher.name, teacher.id] }, prompt: "Select Teacher"
      f.input :phone_number
      f.input :course_id, as: :select, collection: BxBlockCourse::Course.all.map { |course| [course.title, course.id] }
    end
    f.actions
  end

end
