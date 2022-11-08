class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :bio, :text
    add_column :users, :location, :string
    add_column :users, :linkedin_url, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
