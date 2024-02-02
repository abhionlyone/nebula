class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :status
      t.references :project, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: { to_table: :users } # specify correct table
      t.references :assignee, null: false, foreign_key: { to_table: :users } # specify correct table

      t.timestamps
    end
  end
end
