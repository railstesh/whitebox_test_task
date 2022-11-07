class AddReferencesToTicket < ActiveRecord::Migration[7.0]
  def change
    add_reference :tickets, :project, null: false, foreign_key: true
  end
end
