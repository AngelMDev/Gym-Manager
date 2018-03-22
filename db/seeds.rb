# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{name: 'Diego'}, {name: 'Mou'}, {name: 'Nico'}, {name: 'Flo'}, {name: 'Matt'}, {name: 'Granger'}, {name: 'Angel'}, {name: 'Scott'}, {name: 'Fred'}, {name: 'Logan'}])
klasses = Klass.create([{name: 'Spin', time: '3pm', date: 'Monday', capacity: 6}, {name: 'Yoga',time: '7pm',date: 'Tuesday',capacity: 9}, {name: 'Crossfit',time: '8am',date: 'Wednesday',capacity: 4},
   {name: 'Boxing',time: '9pm',date:'Thursday',capacity:8}, {name: 'MMA',time: '12pm',date: 'Friday',capacity: 2}, {name: 'Pump',time: '10am',date:'Saturday',capacity: 10}, {name: 'Yoga',time:'9am',date:'Sunday',capacity: 9}])

