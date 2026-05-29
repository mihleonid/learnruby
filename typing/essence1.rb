a=%w[9:00 10:00 11:30 12:30].each_slice(2).to_a
dop=['12:00','13:00']
f=->t{
t.split(":").zip([60,1]).map{_1.to_i*_2.to_i}.sum
}
g=->t{
'%02i:%02i'%[t/60,t%60]
}
p g[f[a[0][1]]]
tm=0
ans=[]
was=false
a.each{|x,y| 
if f[y]>f[dop[0]] and not was
xx,yy=f[dop[0]],f[dop[1]]
l=yy-xx
xx=[tm,xx].max
yy=xx+l
tm=yy
ans<<[g[xx],g[yy]]
was=1
end
x,y=f[x],f[y]
l=y-x
x=[tm,x].max
y=x+l
tm=y
ans<<[g[x],g[y]]
}
p ans
p (0...1<<tasks.size).map{|x|
x if tasks.filter.with_index{x[_2]==1}.combination(2).all?{_1.split.to_set.intersect?(_2.split.to_set)}
}.compact
.then{|x| x.filter{|y| x.all?{y==_1||(y&_1!=y)}}}
.map{|x| tasks.filter.with_index{x[_2]==1}}
ss.permutation.any?{_1.join==s}
ss.permutation.any?{_1.join==s}
idx=%w[0 0 0 1 0 2 1 0 1 1 1 2 2 0 2 1 2 2 3 1].map(&:to_i).each_slice(2).to_a
code.each_cons(2).map{|x,y| idx[x.to_i].zip(idx[y.to_i]).map{(_1-_2).abs}+1}.sum
q=[]
a1.size.times{
q<<[a1.shift,a2.shift,a3.shift]
(a1,a2=a2,a1) if _1.even?
(a3,a2=a2,a3) if _1.odd?
}
g,e,a=2,1,1
until e==0
e-=1
(a+=1;next) if a<g
g+=1
end
p a
x=[g-a,e].min
e-=x
a+=x
a+e/2
r=(r1-r2).abs
c=(c1-c2).abs
[r,r-n].min+[c,m-c].min
a,b=a.partition.with_index{_2.even?}
[a.sum-b.sum,a.sum-b.sum-2*a.min+2*b.max].max
q=0
s=s.gsub('**'){q+=1;'@'}
a=s.count('*')
return [q,a+s.chars.each_cons(2).count{(?0..?9).include?(_1) and (?a..?z).include(_2)}]
%w[0 0 1 1 0 2 2 0 1 2 2 1 2 2].map(&:to_i).each_slice(2).to_a.each{|x,y| q=[a[x],b[y]].min;a[x]-=q;b[y]-=q;ans+=q}
skill.sort[1..].sum>=k
s.chars.tally.values.then{_1.sum-_1.max}
a.ceildiv(c-b)
purchses.filter{_2.start_with?(month)}.tally.max_by{_2}[0]
words.map{|x| 100.times{x=x.gsub(/'./,'').gsub(/.'/,'')};x}.join
((first+[first[0]]).each_cons(2).to_a.map(&:sort).to_set&
(second+[second[0]]).each_cons(2).to_a.map(&:sort).to_set).first
b=10**100
queens.flat_map{|x,y| [x+b,y,x+y+2*b,x-y+3*b]}.tally.then{_1.values.sum-_1.size}
x='9'*(a/9)+(a%9).to_s
x+='0'*(b-x.size)
skill.sort.reverse[0...(skill.size.ceildiv 2)].then{_1.size*3-_1.sum}
