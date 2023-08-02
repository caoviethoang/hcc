class Product < ApplicationRecord
  belongs_to :sub_category
  enum status: { stock: 0, out_of_stock: 1 }
end
