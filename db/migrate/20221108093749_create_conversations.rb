class CreateConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :conversations do |t|
      t.references :invitor, null: false
      t.references :invitee, null: false

      t.timestamps
    end
    add_foreign_key :conversations, :users, column: :invitor_id
    add_foreign_key :conversations, :users, column: :invitee_id
  end
end
