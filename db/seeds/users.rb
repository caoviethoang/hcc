# frozen_string_literal: true

User.create!(email: 'hoangcv17@gmail.com', password: 'password', first_name: 'Cao', last_name: 'Hoang',
             phone: '+84 9999999', address: 'Ha Noi')

10.times do |_i|
  FactoryBot.create :user
end
