class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :star
      t.timestamps
    end
    remove_column :recipes, :rating
  end
end
