class CreateQuestionsToTags < ActiveRecord::Migration[7.1]
  def change
    create_table :questions_to_tags do |t|
      t.references :question, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
