class CreateProficiencyLevels < ActiveRecord::Migration
  def change
    create_table :proficiency_levels do |t|

      t.timestamps
    end
  end
end
