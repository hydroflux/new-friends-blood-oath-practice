class Follower
    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize name, age, life_motto
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    #helper method
    def all_oaths
        Bloodoath.all.select do |oath|
            oath.follower == self
        end
    end

    def cults
        blood_oaths.map {|oath| oath.cult}
    end

    def join_cult cult, date
        Bloodoath.new(cult, self, date)
    end

    def self.of_a_certain_age age
        self.all.select do |follower|
            follower.age >= age
        end
    end
end