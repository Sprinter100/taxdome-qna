class CreateVotes < ActiveRecord::Migration[7.1]
  def change
    create_table :votes do |t|
      t.integer :value
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
