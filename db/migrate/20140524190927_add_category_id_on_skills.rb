class AddCategoryIdOnSkills < ActiveRecord::Migration
  def change
  	add_column :skills, :skill_category_id, :integer
  end
end
