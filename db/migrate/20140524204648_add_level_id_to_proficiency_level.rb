class AddLevelIdToProficiencyLevel < ActiveRecord::Migration
  def change
    add_column :proficiency_levels, :level_id, :integer
  end
end
