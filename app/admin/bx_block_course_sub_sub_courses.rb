ActiveAdmin.register BxBlockCourse::SubSubCourse do
  menu priority: 3, label: 'Week Topics', parent: 'Create Courses'

  permit_params :title, :link, :sub_course_id, :description

  form do |f|
    f.semantic_errors # Display validation errors at the top

    f.inputs "SubSubCourse Details" do
      f.input :title
      f.input :link
      f.input :sub_course_id, as: :select, collection: BxBlockCourse::SubCourse.all.map { |sub_course| [sub_course.title, sub_course.id] }, prompt: "Select SubCourse"
      f.input :description, as: :text
    end

    f.actions # Include default form actions (e.g., Save, Cancel)
  end
end
