a=[1]
s.times{
	a=[0,*a,0].each_cons(2).map{_1+_2}
}
a
