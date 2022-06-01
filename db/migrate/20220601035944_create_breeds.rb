class CreateBreeds < ActiveRecord::Migration[6.1]
  def change
    create_table :breeds do |t|
      t.string :name
      t.string :info
      t.string :image_url
      t.integer :group_id

      t.timestamps
    end
  end
end
