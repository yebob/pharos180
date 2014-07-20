class CreateSpecializationWeights < ActiveRecord::Migration
  def change
    create_table :specialization_weights do |t|
      t.integer :weight
      t.references :specialization, index: true
      t.references :skill_category, index: true

      t.timestamps
    end
  end
end
