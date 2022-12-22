class UpdateRoleAuditionId < ActiveRecord::Migration[5.2]
  def change
    rename_column :auditions, :belong_to, :role_id
  end
end
