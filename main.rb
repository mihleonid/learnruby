#Code is written in data-prefix form:
p "1 2".strip.split.map(&:to_i).sum
#Vs Python's sum(map(int,"1 2".strip().split())) (data-infix)
#Debugging print is p
p 2
p "ab"
#Calling can be used without () but
p "1 2".strip().split().map(&:to_i).sum
#works too
"
Operator precedence
!, ~, unary +
**
unary -
*, /, %
+, -
<<, >>
&
|, ^
>, >=, <, <=
<=>, ==, ===, !=, =~, !~
&&
||
.., ...
?, :
space call
modifier-rescue
=, +=, -=, etc.
defined?
not
or, and
modifier-if, modifier-unless, modifier-while, modifier-until
{ } blocks
"""

p 0.even? ? 1 : 0#correct
p 0==0 ?1:0 #correct
#p 0.even? ?1:0 incorrect
#p 0.even??1:0 incorrect. It's better to use space or higher precedenced a&&b||c block

p true==true
p true!=1
p false!=0
p "Strange but 0 casts to true" if 0
p "!0 is false" if !0==false
p "!0 is false" unless !0
p "!0 is false" if !0==false
p "nil and flase are only falsish" if !nil&&!false

#There were postfix if and postfix unless (if not). They are invoked BEFORE left side
i=0;(p i;i+=1) while i<5 # is equal to

i=0
while i<5 do
	p i;i+=1
end

#Expressions can be written as multiline
i=0
(
 p i
 i+=1
) while i<5 # is equal to

p 0.next.
next
.next #prints 3

p 0+1+
1
+1#prints 2, +1 is stray

#p 8/2/
#2
#/2 incorrect

"
Operators can be called like a/b or a./(b) Later is useful for another call:
a./(b).round does not requires going to beginning of the line after typing a expression
"

#functions
f=->{_1.even?}
p [1,2,3].map(&f)
#p [1,2,3].map(&:f) bad - tries to call 1.f (:f - literal)
p [1,2,3].map{f[_1]}
p [1,2,3].map(&:even?) #: for converting to literal and then litaral to block does .even? call. Then map maps with that block
p [1,2,3].reduce(0,:+)
p [1,2,3].reduce(:+)#it's optional to convert to block (with &) in reduce
p [1,2,3].reduce(&->{_1+_2})#Now it's crucial, lambda is not literal
p [1,2,3].sum
fact=->{(1.._1).reduce(1,:*)}
p fact[6]
p [].max
p [][11]
p (([].max+1)rescue "no element")

#Simple constructions are available too
if true #Optional then
p true
else #esif another_cond
p false
end

for j in 0..4 #Optional do
p j
end
p j#4

i=0
while i<4 #Optional do
p i
i+=1
end

#One should be EXTREMLY CAREFUL with numbered args. If only _1 is used it's pair (example with .with_index) and if _1 and _2 are used, then _1 is first pair element and _2 is second.
