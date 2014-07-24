class CreateSkillLevels < ActiveRecord::Migration
  def change
    create_table :skill_levels do |t|
      t.references :level, index: true
      t.references :skill, index: true

      t.text :description

      t.timestamps
    end
  end
end
