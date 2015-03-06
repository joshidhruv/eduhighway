# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'    

location = Rails.root.join('public','solar_systems.csv')
csv_text = File.read(location)
csv = CSV.parse(csv_text, :headers => true)

csv.each do |row|
 	#.create!(row.to_hash)
 	@data = row.to_hash
 	@names = Rawname.new
	@names.system_id = @data["solarSystemID"]
	@names.system_name = @data["solarSystemName"]
	@names.save
	puts @names

end