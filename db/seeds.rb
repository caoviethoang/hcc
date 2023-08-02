# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
abort if Rails.env.production?

require 'factory_bot_rails'

def puts(msg)
  return if Rails.env.test?

  super(msg)
end

def load_seed_file(name)
  path = "./seeds/#{name}.rb"
  puts path
  require_relative path
end

puts 'Generating seeds...'

load_seed_file('users')
load_seed_file('categories')

if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password',
                    password_confirmation: 'password')
end
