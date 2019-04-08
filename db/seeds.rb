# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
begin
  user=User.create!(first_name: 'Asim', middle_name: 'Riaz', last_name: 'Kaghzi', email: 'akaghzi@gmail.com', password: 'hussain7', cnic: '12345-1234567-1',phone: '+92(333)711-8812')
user.update(confirmation_token: nil, confirmed_at: Time.now)
rescue
  Rails.logger.info "I can not create this user"
end