class Seed < ActiveRecord::Base
  belongs_to :team
  belongs_to :region
  belongs_to :tournament

end
