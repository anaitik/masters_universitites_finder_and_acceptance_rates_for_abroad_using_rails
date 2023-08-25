class AddAccountIdToAnswers < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :account_id, :integer
  end
end
