class AddAreaIdToPosition < ActiveRecord::Migration
  def change
    add_column :positions, :area_id, :integer
  end
end
