class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.integer :status

      t.timestamps
    end
  end
end
