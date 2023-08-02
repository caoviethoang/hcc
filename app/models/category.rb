# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :sub_categories, dependent: :destroy
  enum status: { active: 0, inactive: 1, suspended: 2 }
end
