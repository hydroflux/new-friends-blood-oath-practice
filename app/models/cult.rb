class Cult
    attr_reader :name, :location, :founding_year, :slogan 

    @@all = []

    def initialize name, location, founding_year, slogan
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower follower, date
        Bloodoath.new(self, follower, date)
    end

    #helper method to access info about specific cult
    def all_oaths
        Bloodoath.all.select {|oath| oath.cult == self}
        #can call .cult because of attr reader in bloodoath
    end

    def cult_population
        all_oaths.length
    end

    def self.find_by_name name
        all.find {|cult| cult.name == name}
    end

    def self.find_by_location location
        all.select {|cult| cult.location == location}
    end

    def self.find_by_year year
        all.select {|cult| cult.founding_year == year}
    end

    def followers
        all_oaths.map {|oath| oath.follower}
    end

    def average_age
        followers.reduce(0) do |ages, follower|
            ages += follower.age.to_f
        end/ followers.count.to_f
    end
end