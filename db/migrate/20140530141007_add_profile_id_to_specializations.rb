class AddProfileIdToSpecializations < ActiveRecord::Migration
  def change
    add_column :specializations, :profile_id, :integer
  end
end
