# frozen_string_literal: true

class Category < ApplicationRecord
  enum status: { active: 0, inactive: 1, suspended: 2 }
end
