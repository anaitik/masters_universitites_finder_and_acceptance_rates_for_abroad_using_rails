class AddDescriptionToSubSubCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :sub_sub_courses, :description, :text
  end
end
