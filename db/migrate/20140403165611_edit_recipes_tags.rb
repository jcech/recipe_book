class EditRecipesTags < ActiveRecord::Migration
  def change
    remove_column :recipes_tags, :recipe_id
    remove_column :recipes_tags, :tag_id

  end
end
