class AddLikesToBreeds < ActiveRecord::Migration[6.1]
  def change
    add_column :breeds, :likes, :integer
  end
end
