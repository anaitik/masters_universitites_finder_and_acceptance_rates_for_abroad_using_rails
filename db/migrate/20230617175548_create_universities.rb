class CreateUniversities < ActiveRecord::Migration[6.1]
  def change
    create_table :universities do |t|
      t.string :logo
      t.string :ios_logo
      t.string :name
      t.float :tuition
      t.float :gpa
      t.string :uni_type
      t.float :avg_salary
      t.integer :rank
      t.string :country_name
      t.float :living_expenses
      t.integer :gmat
      t.integer :gre
      t.string :slug
      t.integer :total_students
      t.text :address
      t.string :schools
      t.float :acceptance_rate_masters
      t.string :short_name

      t.timestamps
    end
  end
end
