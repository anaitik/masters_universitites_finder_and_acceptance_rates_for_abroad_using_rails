class AddCourseIdToAccounts < ActiveRecord::Migration[7.0]
  def change
    add_column :accounts, :course_id, :integer
  end
end
