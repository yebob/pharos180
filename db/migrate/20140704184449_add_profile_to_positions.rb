class AddProfileToPositions < ActiveRecord::Migration
  def change
    add_reference :positions, :profile, index: true
  end
end
