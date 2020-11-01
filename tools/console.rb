require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# cult seeds 
cromulons = Cult.new('Cromulons', 'Cygnus-5', 2015, 'Get Schwifty')
jonestown = Cult.new('Jonestown', 'Indianapolis', 1950, 'We drink the koolaid')
heavensgate = Cult.new("Heaven/'s Gate", 'San Diego', 1974, 'We love space and aliens')
solartemple = Cult.new('Order of the Solar Temple', 'Geneva', 1984, 'Doomsday is real')

# follower seeds
summer = Follower.new('Summer', 18, 'Headism is the only way')
jim = Follower.new('Jim', 40, 'i love grape flavors')
bonnie = Follower.new('Bonnie', 34, 'spaceships are dope')
joseph = Follower.new('Joseph', 26, 'the star Sirius is so cool')
charles = Follower.new('Charles', 28, 'i have a big family')
ted = Follower.new('Ted', 28, 'i am charismatic')
ed = Follower.new('Ed', 28, 'Read books')


# bloodoath seeds
oath1 = Bloodoath.new(cromulons, summer, '2015/2/11')
oath2 = Bloodoath.new(jonestown, jim, '1951/1/1')
oath3 = Bloodoath.new(jonestown, bonnie, '1951/1/1')
oath4 = Bloodoath.new(jonestown, joseph, '1952/1/1')
oath5 = Bloodoath.new(jonestown, charles, '1952/1/1')
oath6 = Bloodoath.new(heavensgate, bonnie, '1974/1/1')
oath7 = Bloodoath.new(heavensgate, ed, '1988/11/1')
oath8 = Bloodoath.new(solartemple, joseph, '1989/12/1')
oath8 = Bloodoath.new(solartemple, ted, '1990/4/1')
oath8 = Bloodoath.new(solartemple, ed, '1994/3/2')
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits