#Prefsum
[s=0]+arr.map{s+=_1}

#Scanline
q=[]
s=0
segments.flat_map{[[_1,-1],[_2,1]]}.sort.each{
	q<<_1 if s==0
	s+=_2
	q<<_1 if s==0
}
q.each_cons(2).to_a

#Another scanline
segments.sort.map{_1..._2}.chunk_while(&:overlap?).map{[_1[0].begin,_1[-1].end]}

#Longest 1-s in 01 array
s=0
arr.map{s+=_1;s*=_1}

#Longest condition held
arr.chunk(&cond).filter_map{_2.size if _1}.max

#2d search
j=nil
i=arr.index{j||=_1.index(x)}

#Function
f=->{
	(_1-_2).abs
}
p f[1,2]
