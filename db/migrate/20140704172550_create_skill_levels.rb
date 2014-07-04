class CreateSkillLevels < ActiveRecord::Migration
  def change
    create_table :skill_levels do |t|
      t.string :name
      t.text :description
      t.references :skill, index: true

      t.timestamps
    end
  end
end
