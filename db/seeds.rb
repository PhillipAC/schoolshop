# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Teacher.create(name: 'Mr Sigma', room: "143")
Teacher.create(name: 'Mrs Kappa', room: "144")
Teacher.create(name: 'Dr Alpha', room: "242")

Section.create(name: 'First Period', startTime: '08:30:00')
Section.create(name: 'Second Period', startTime: '09:59:00')
Section.create(name: 'Fourth Period', startTime: '13:31:00')

Item.create(name: 'coffee', price: '2.00', description: 'A perfect blend of coffee beans blended to just the right grind.', picture: 'https://c2.staticflickr.com/8/7056/6946102217_91110e02a4_k.jpg')
Item.create(name: 'water', price: '1.00', description: 'A cool glass of ice water. Perfect to defeat a hot autumn day.', picture: 'https://c1.staticflickr.com/4/3266/4568983104_51bf715793_b.jpg')
Item.create(name: 'tea', price: '2.00', description: 'A warm cup of tea steaped for just the right time. Ready to be enjoyed.', picture: 'https://c1.staticflickr.com/1/31/46005560_8d3e17e569_b.jpg')
Item.create(name: 'milk', price: '1.50', description: 'A glass of white milk. Creamy, Perfect. Got Milk? We do.', picture: 'https://c7.staticflickr.com/9/8372/8348199038_a0948c9f28_b.jpg')