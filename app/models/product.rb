class Product < ApplicationRecord
  enum status: { stock: 0, out_of_stock: 1 }
end
