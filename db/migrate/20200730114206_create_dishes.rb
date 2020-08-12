class CreateDishes < ActiveRecord::Migration[6.0]
  def up
    create_table :dishes do |t|
      t.string :title
      t.text :category
      t.bigint :price

      t.timestamps
    end
  end

  def down
    drop_table :dishes
  end
end
