p "abccabc".to_enum(:scan,'c').map{$`.size}#All indices of c in string
"
$~: Returns a MatchData object, or nil.
$&: Returns the matched part of the string, or nil.
$`: Returns the part of the string to the left of the match, or nil.
$': Returns the part of the string to the right of the match, or nil.
$+: Returns the last group matched, or nil.
$1, $2, etc.: Returns the first, second, etc., matched group, or nil. Note that $0 is quite different; it returns the name of the currently executing program.
"
