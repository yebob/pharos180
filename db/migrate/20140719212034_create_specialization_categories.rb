class CreateSpecializationCategories < ActiveRecord::Migration
  def change
    create_table :specialization_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
