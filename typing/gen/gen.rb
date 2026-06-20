a=File.read('rules').lines.map(&:strip)+
File.read('weight_rules').lines.map(&:strip)
b=a.flat_map{|w|
	'S I AS AI'.split.repeated_permutation(2).map{
		|x,y|
		w.gsub('X',x).gsub('Y',y)
	}.uniq
}

