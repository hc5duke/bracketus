require 'csv'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CSV.foreach("lib/ncaa_teams.tsv", { headers: true, col_sep: "\t"} ) do |row|
	team = Team.new(
    espn_id:   row[0],
    espn_name: row[1],      
    espn_url:  row[2],       
    cbs_abbr:  row[3],       
    cbs_url:   row[4],      
    cbs_name:  row[5],       
    name:      row[5]
  )

  puts "TEAM #{team.as_json}"
  team.save
end