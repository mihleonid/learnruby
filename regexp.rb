p "abccabc".to_enum(:scan,'c').map{$`.size}#All indices of c in string
"
$~: Returns a MatchData object, or nil.
$&: Returns the matched part of the string, or nil.
$`: Returns the part of the string to the left of the match, or nil.
$': Returns the part of the string to the right of the match, or nil.
$+: Returns the last group matched, or nil.
$1, $2, etc.: Returns the first, second, etc., matched group, or nil. Note that $0 is quite different; it returns the name of the currently executing program.
"
p 'abs'['b']
p 'abs'[/b/]
p 'abs'[/c/]
p 'k3s'.index(/\d/)
p /hello/i
p /#{1+2}/
string_var="hello"
p /#{string_var}/
p ['yes','no'].any?(/s/) #Any element matches? Also work with all? none? one?
p 'ab3fjg8fdk9'.scan(/\d/).size
p 'My ip is 127.0.0.1!'[/(\d+)\.(\d+)\.(\d+)\.(\d+)/,1] #Get i-th group
