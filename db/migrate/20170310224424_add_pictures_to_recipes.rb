class AddPicturesToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :pictur, :string
  end
end
