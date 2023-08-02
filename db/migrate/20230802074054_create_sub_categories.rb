class CreateSubCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_categories do |t|
      t.integer   :category_id, null: false
      t.string    :name
      t.index     :category_id
      t.integer   :quantity
      t.integer   :quantity_remaining, default: 0
      t.timestamps
    end
  end
end
