q=[]
for a in 0..30
for b in 0..30
for c in 0..30
	q<<2**a*3**b*5**c
end
end
end
q.min(n)[-1]
