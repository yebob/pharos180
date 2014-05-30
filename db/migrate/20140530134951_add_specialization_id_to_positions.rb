class AddSpecializationIdToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :specialization_id, :integer
  end
end
