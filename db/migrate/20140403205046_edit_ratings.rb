class EditRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :recipe_id, :integer
  end
end
