class CreateLevel < ActiveRecord::Migration
  def change
    create_table :level do |t|
      t.string :name

      t.timestamps
    end
  end
end
