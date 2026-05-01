require 'prime'

p 3.prime?

p 550.prime_division

p Prime.first(11)    # first 11
Prime.each(11){p _1} # not greater then 11

p Prime.int_from_prime_division(550.prime_division)

q=[1]*(big=1000)
q[0]=0
q[1]=0
big.times{|p|
	(p+p).step(big-1,p).each{q[_1]=0} if q[p]==1
}
p q.values_at(5,6,7)
