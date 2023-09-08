class CreateBxBlockCoursesSubSubCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_sub_courses do |t|
      t.string :title
      t.string :link
      t.references :sub_course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
