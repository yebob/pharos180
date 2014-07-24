class CreateSpecializationSkills < ActiveRecord::Migration
  def change
    create_table :specialization_skills do |t|
      t.references :specialization, index: true
      t.references :skill, index: true

      t.timestamps
    end
  end
end
