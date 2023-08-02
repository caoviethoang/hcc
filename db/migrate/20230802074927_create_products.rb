class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer   :sub_category_id, null: false
      t.index     :sub_category_id
      t.string    :name
      t.integer   :status, default: 0, null: false
      t.integer   :product_id, null: false
      t.integer   :quantity_in_category, default: 0
      t.decimal  :price, null: false, precision: 10, scale: 2
      t.timestamps
    end
    add_foreign_key :products, :sub_categories
  end
end
