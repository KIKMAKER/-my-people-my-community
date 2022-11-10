class AddStatusToProjectMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :project_members, :status, :integer, default: 0
  end
end
