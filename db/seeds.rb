# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create([
	
	{title: 'Fight Club', 
	description: "An insomniac office worker
	looking for a way to change his life crosses paths
	with a devil-may-care soap maker and they form an
	underground fight club that evolves into something much, much more...",
	year_released: '1999'},

	{title: 'The Dark Knight', 
	description: "When Batman, Gordon and Harvey Dent launch an assault on the mob, 
	they let the clown out of the box, 
	the Joker, bent on turning Gotham on itself and bringing any heroes down to his level.",
	year_released: '2008'}

	])