ActiveAdmin.register BxBlockCourse::SubSubSubCourse do
  menu priority: 4, label: 'Topics', parent: 'Create Courses'

  permit_params :title, :link, :description, :sub_sub_course_id

  form do |f|
    f.semantic_errors # Display validation errors at the top

    f.inputs "SubSubSubCourse Details" do
      f.input :title
      f.input :link
      f.input :description, as: :text
      f.input :sub_sub_course_id, as: :select, collection: BxBlockCourse::SubSubCourse.all.map { |sub_sub_course| [sub_sub_course.title, sub_sub_course.id] }, prompt: "Select SubSubCourse"
    end

    f.actions # Include default form actions (e.g., Save, Cancel)
  end
end
