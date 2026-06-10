#Rarely but it can be useful to use case
#It can beused with anything with === operator (like, regexp, ranges, objects)
case 45
when 0..5
p 6
when 6..;
p 7
end

case 45
in 0..5
p 6
in 6..;
p 7
end

case [1,2,3]
in [1,a,3]
p a
in [1,a]
p 0
end
