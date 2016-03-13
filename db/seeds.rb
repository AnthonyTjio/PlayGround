# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
#...
users = [
			["Anthony","1234","1234-4321","Jl. Eboni 26"],
			["Ken Toshi", "4321", "4321-1234","Jl. Cakalang 14"],
			["Nakamiya Shuu", "0987", "3210-3456", "Binus Square A 12 07"]
		]

users.each do |data|
	User.create(username:data[0], password:data[1], phone:data[2], address:data[3])
end