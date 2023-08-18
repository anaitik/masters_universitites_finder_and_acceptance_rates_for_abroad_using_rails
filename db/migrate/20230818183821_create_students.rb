class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.references :account, null: false, foreign_key: true
      t.string :name
      t.string :full_phone_number
      t.string :address
      t.timestamps
    end
  end
end
