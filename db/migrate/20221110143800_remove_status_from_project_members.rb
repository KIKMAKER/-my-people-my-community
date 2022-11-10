class RemoveStatusFromProjectMembers < ActiveRecord::Migration[7.0]
  def change
    remove_column :project_members, :status, :integer
  end
end
