class CreateQuestionsToCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :questions_to_categories do |t|
      t.references :question, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
