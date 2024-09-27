class AddDefaultReputationToUsers < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :reputation, 0
  end
end
