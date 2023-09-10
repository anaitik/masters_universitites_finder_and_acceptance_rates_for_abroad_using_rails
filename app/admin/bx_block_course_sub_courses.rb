ActiveAdmin.register BxBlockCourse::SubCourse do
  menu priority: 2, label: 'Course Weekly Targets', parent: 'Create Courses'

  permit_params :title, :link, :course_id, :description

  form do |f|
    f.semantic_errors # Display validation errors at the top

    f.inputs "SubCourse Details" do
      f.input :title
      f.input :link
      f.input :course_id, as: :select, collection: BxBlockCourse::Course.all.map { |course| [course.title, course.id] }, prompt: "Select Course"
      f.input :description, as: :text
    end

    f.actions # Include default form actions (e.g., Save, Cancel)
  end
end
