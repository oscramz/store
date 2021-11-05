class CreateCartproducts < ActiveRecord::Migration[6.1]
  def change
    create_table :cartproducts do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
