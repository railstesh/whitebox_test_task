class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.string :priority
      t.date :start_date
      t.date :end_date
      t.integer :status

      t.timestamps
    end
  end
end
