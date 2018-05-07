class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :question_type
      t.text :statement
      t.integer :subject_matter_id

      t.timestamps
    end
  end
end
