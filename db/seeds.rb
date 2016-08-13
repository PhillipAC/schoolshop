# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Teacher.create(name: 'sample1', room: "3")
Teacher.create(name: 'sample2', room: "2")
Teacher.create(name: 'sample3', room: "1")

Section.create(name: 'First Period', startTime: '08:30:00')
Section.create(name: 'Second Period', startTime: '09:59:00')
Section.create(name: 'Fourth Period', startTime: '13:31:00')

Item.create(name: 'coffee', price: '2.00', description: 'null1')
Item.create(name: 'water', price: '1.00', description: 'null2')
Item.create(name: 'tea', price: '2.00', description: 'null3')
Item.create(name: 'milk', price: '1.50', description: 'null4')

User.create(name: 'guest')