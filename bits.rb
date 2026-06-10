a=239
p "%010b"%a
p "%b"%a
p a.to_s(2)
p a.digits(2).sum
p [a[0],a[1],a[2],a[3],a[4]]
p a.bit_length
p a[(2..4)]
#nobits?(mask) anybits?(mask) allbits?(mask) - check not and, or, and !=0 wth mask
