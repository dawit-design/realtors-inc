# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Property.destroy_all
Agent.destroy_all
User.destroy_all

@admin = User.create!(username: 'admin', email: 'admin@gmail.com', password: '123456')

puts "#{User.count} users created"

@dawit = Agent.create!(name: 'dawit', image_url: 'https://i.pinimg.com/originals/2f/9c/de/2f9cdef00d125963692d69bbdd190844.jpg',email: 'dawit@mail.com', office_location: '7 waterhouse st', speciality: 'buyers agent', about: 'Licensed Realtor with 8+ years of residential and commercial sales experience. Expert in planning and integreting new customer prospecting capaings, increasing agencies acquisition rate by an average of 20% anually. Adept in contract drafting, negotiation, marketing research and client analysis.')
@aman = Agent.create!(name: 'aman', image_url: 'https://i.pinimg.com/originals/f8/cf/ff/f8cfffd856093bbe31d0d810be4db055.png',email: 'aman@example.com', office_location: '21 cambridge st', speciality: 'sales agent', about: 'California licensed property manager with 10+ years of experience and a proven ability to close contracts with both landlords and clients, select professional and const efficient contractors. and file accurate taxes. Hold certifications from the National Association of Residential Property Managers and California Real Estate Salsperson License')
@mike = Agent.create!(name: 'mike', image_url: 'https://s7.favim.com/orig/150929/aww-cute-puppy-sunglasses-Favim.com-3375457.jpg',email: 'mike@email.com', office_location: '21 arlington st', speciality: 'listing agent', about: 'With 14+ years of experience in real estate, excellent customer service and a commitment to work hard, listen and follow through. Provides quality service to build relationships with clients and more importantly, maintain those relationships by communicating effectively.')

puts "#{Agent.count} agents created"

@somerville = Property.create!(city: 'somerville', user: @admin, state: 'ma', street_adress: '7 waterhouse st', image_url: 'https://www.rocketmortgage.com/resources-cmsassets/RocketMortgage.com/Article_Images/Large_Images/TypesOfHomes/types-of-homes-hero.jpg', type: '', year_bulit_in: 1990, price: 300000, description: 'this house was built in 1990 and and on good condition')
@boston = Property.create!(city: 'boston', user: @admin, state: 'ma', street_adress: '7 waterhouse st', image_url: 'https://www.rocketmortgage.com/resources-cmsassets/RocketMortgage.com/Article_Images/Large_Images/TypesOfHomes/types-of-homes-hero.jpg', type: '', year_bulit_in: 1990, price: 300000, description: 'this house was built in 1990 and and on good condition')
@nyc = Property.create!(city: 'nyc', user: @admin, state: 'ny', street_adress: '7 waterhouse st', image_url: 'https://www.rocketmortgage.com/resources-cmsassets/RocketMortgage.com/Article_Images/Large_Images/TypesOfHomes/types-of-homes-hero.jpg', type: '', year_bulit_in: 1990, price: 300000, description: 'this house was built in 1990 and and on good condition')

puts "#{Property.count} properties created"