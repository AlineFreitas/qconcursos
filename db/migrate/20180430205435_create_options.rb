class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.integer :question_id
      t.string :description
      t.boolean :answer

      t.timestamps
    end
  end
end
