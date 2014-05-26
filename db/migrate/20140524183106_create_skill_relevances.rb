class CreateSkillRelevances < ActiveRecord::Migration
  def change
    create_table :skill_relevances do |t|
      t.decimal :score

      t.timestamps
    end
  end
end
