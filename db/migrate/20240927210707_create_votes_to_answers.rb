class CreateVotesToAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :votes_to_answers do |t|
      t.references :vote, null: false, foreign_key: true
      t.references :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
