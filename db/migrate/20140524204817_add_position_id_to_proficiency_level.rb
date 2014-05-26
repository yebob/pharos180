class AddPositionIdToProficiencyLevel < ActiveRecord::Migration
  def change
    add_column :proficiency_levels, :position_id, :integer
  end
end
