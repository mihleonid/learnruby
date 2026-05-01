require 'time' #For parsing, other operations can be obtained without this
p Time.parse('5:45').strftime("%H:%M")

#They look like seconds
#Date.new or Time.to_date for day-looking structure
t=Time.now
t.to_i#to sec
Time.at(0,in:'Z')#from sec Z for UTC. May be ommit if does not care
#.new(year,month,day,hour,minute,sec). May be ommited. They are numeric or (for Time.new) strings with ints

#Tally of displayed time:
a='23:59'
b='00:01'
a=Time.parse(a)
b=Time.parse(b)
b+=24*60*60 if a>b
q=[]
(q<<a.strftime("%H%M");a+=60) while a<=b
p q.join.chars.tally
