class Tournament < ActiveRecord::Base
	has_many :seeds
	has_many :regions

	def generateSeeds
		seeds = []
		regions = []
		(1..4).each do |region_id|
			puts region_id
			region = Region.new(order: region_id)
			region.save
			regions << region 
			[1,16,8,9,5,12,4,13,6,11,3,14,7,10,2,15].each_with_index do |seed,index|
			  seeds << Seed.new(region:region, seed: seed, team_id: (index+1)*region_id)
			end
		end
		self.seeds = seeds
		self.regions = regions
	end
end
