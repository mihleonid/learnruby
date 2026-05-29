a.each_cons(2).map{(_1-_2).abs}+
a.each_cons(2).map{(_1+_2).abs-(_1-_2).abs}.sort.last(2).filter{_1>=0}.sum
