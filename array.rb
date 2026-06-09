#Array-specific
p [*0..10][(1..)%2]#Slices
p ([[0]*3]*3).map(&:dup)#Fast 2d array
p [1,2].product([2,3],[4,5])
p [1,2,3,5].combination(2).to_a#If we write .to_a that means method is returning Enumerator or smt
p [1,2,3,5].permutation(2).to_a
p [1,2,3].permutation.to_a
p [].empty?
p [1,2,3].values_at(2,1,0)==[1,2,3].reverse
p [1,2,3,4,5,6,7][2...4]#Exclusive
p [1,2,3,4,5,6,7][2..4]#Includive
p [1,2,3,4,5,6,7][2,4]#first, size
#negative indices calculates from the end. So if you want [...-x] consider [...n-x] or [..-1-x] or else if x==0 it may surprise
#ranges can be beginless ore endless
arr=[1,2,3]
p arr.first(2)
p arr.last(2)
p arr.drop(2)
p arr
arr.reverse!
p arr
arr.sort!
p arr
p arr.size
p arr.push(4)#arr.push(4,5)
p arr<<5
p arr.shift
p arr
p arr.unshift(1)
p arr
p arr.insert(3,'apple','banana')
p arr.insert(3,*['preapple','prebanana'])#* just like python's
#.delete_at .pop
#.uniq and .uniq!
#.map!
#.filter .reject
p [1,2,3].rotate
p [[[1,2],[3,4]],[5,6]].flatten
p [[[1,2],[3,4]],[5,6]].flatten 1
#.reverse! .flatten!
#.repeated_permutation

p [1,2,3]*3
#& | automatic omits duplicates
#+ and - for + and -
p [1,2,3]*' ' # .join ' '
#<=> lexicograph

p [1,2,3].bsearch_index{_1>=2}
#Array and range has .bsearch - first element with condition held
#You can even
p (0..).bsearch{_1>100}

p [[1,2],[3,4]].to_h[1]

p [[1,2],[3,4]].transpose


p "Enumerable's methods"
p (1..3).sum
p (1..3).sum{_1**2}
#.each as for alternative
p (1..3).map.with_index{|x,i| x*i}
p (1..3).filter(&:even?)
p (1..3).count(&:even?)
#.flat_map is like map but also flattens one time
#.filter_map .map.compact
#.compact removes nil and converst to array
(1..3).each.with_index{p _1*_2}
p (1..3).sort_by.with_index{_2}
#sort and sort_by  are not guaranteed to be stable but they are
p (1..3).chunk{_1.even?}.to_a#It's enumerator to array
p (1..3).group_by{_1!=2}.to_a#It's Hash to array
#chunk and group_by are for grouping by some feature chunk for consequent
#chunk_while two args - when to split
#.all? .any? .one? .none? checking (accepts block or element)
#.tally it's Counter histogram (Hash type), but with default to nil
p (1..3).tally.tap{_1.default=0}#for 0 default
p (1..3).to_a#to array
p (1..3).take_while{_1.even?}
p (1..3).drop_while(&:odd?)
p [(1..3).min,(1..3).max,(1..3).minmax]
#.min_by .max_by .minmax_by
p (1..3).partition(&:even?)#array of two arrays [trues, falses]
#.chunk_while Splits if value is false for two elements
#.slice_when split if value is true (two argument function)
#.slice_after and .slice_before - obvious methods
#.find (.filter.first)
#.index (with block or element)
#.rindex (with block or element)
#.zip returns array IMPORTANT! this is not obvious zip. Size is the same, some elements may be truncated and some replaced with nil.
p (1..3).zip([1,2],1..100)
#.cycle calls block repeatedly for all elements
