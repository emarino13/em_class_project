class LunchTruck < ActiveRecord::Base
  attr_accessible(:full_name, :website, :twitter_handle, :location)

  validates(:full_name, :presence=> true, uniqueness =>true)
  validates(:website, :presence => true, uniqueness =>true)
  validates(:twitter_handle, :presence => true, uniqueness =>true)
  validates(:location, :presence => true)
end
