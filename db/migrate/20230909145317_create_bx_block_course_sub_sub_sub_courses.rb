class CreateBxBlockCourseSubSubSubCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :bx_block_course_sub_sub_sub_courses do |t|
      t.string :title
      t.string :link
      t.text :description
      t.references :sub_sub_course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
