class CreateSubjectMatters < ActiveRecord::Migration[5.1]
  def change
    create_table :subject_matters do |t|
      t.string :name
      t.integer :discipline_id

      t.timestamps
    end
  end
end
