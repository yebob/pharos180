class AddSpecializationIdToPositions < ActiveRecord::Migration
  def change
    add_reference :positions, :specialization, index: true
  end
end
