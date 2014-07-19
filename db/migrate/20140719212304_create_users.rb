class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.references :position, index: true

      t.timestamps
    end
  end
end
