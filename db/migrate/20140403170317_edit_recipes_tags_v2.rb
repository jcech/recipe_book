class EditRecipesTagsV2 < ActiveRecord::Migration
  def change
    drop_table :recipes_tags

    create_table :recipes_tags do |t|
        t.belongs_to :recipe
        t.belongs_to :tag
    end
  end
end
