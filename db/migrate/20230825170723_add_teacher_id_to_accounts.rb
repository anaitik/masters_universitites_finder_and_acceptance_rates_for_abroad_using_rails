class AddTeacherIdToAccounts < ActiveRecord::Migration[7.0]
  def change
    add_reference :accounts, :teacher, foreign_key: true
  end
end
