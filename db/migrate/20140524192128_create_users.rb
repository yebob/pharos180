class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :position_id
      t.integer :profile_id

      t.timestamps
    end
  end
end
