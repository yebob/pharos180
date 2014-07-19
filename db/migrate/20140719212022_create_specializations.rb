class CreateSpecializations < ActiveRecord::Migration
  def change
    create_table :specializations do |t|
      t.string :name
      t.references :specialization_category, index: true

      t.timestamps
    end
  end
end
