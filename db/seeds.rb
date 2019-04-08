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
Role.create!(name: 'doctor', display_name: 'Doctor', description: 'Medical doctor fully qualified to despense medicine, advise etc', display_order: 1)
Role.create!(name: 'paramedic', display_name: 'Paramedic', description: 'Para Medical staff member fully qualified to administermedicines, provide basic advice etc', display_order: 2)
Role.create!(name: 'admin', display_name: 'Administrator', description: 'Administrator on website for the client', display_order: 100)