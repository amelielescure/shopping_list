class CreateProductLists < ActiveRecord::Migration
  def change
    create_table :product_lists do |t|
      t.integer :list_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end
end
