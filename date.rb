require 'time'
p Date.new(2000,1,31).to_s.split('-').reverse*'.'
p Date.parse("2000-1-31").to_s.split('-').reverse*'.'
p Date.new(2000)
p (Date.new(2000)+1).to_s
d=Date.today-7
p d
p (Date.today-d)
p Date.new(2004).leap?
p Date.today.day
p Date.today.month
p Date.today.year
