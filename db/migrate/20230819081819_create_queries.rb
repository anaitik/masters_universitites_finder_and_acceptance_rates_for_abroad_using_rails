class CreateQueries < ActiveRecord::Migration[7.0]
  def change
    create_table :queries do |t|
      t.string :title
      t.text :description
      t.string :status
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
