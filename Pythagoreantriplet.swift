/**#9
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
**/

//pytriplet is always a<b<c
//as a+b+c = 1000 && a<b<c -> a<1000/3 , a<b<1000/2 
func pytriplet() -> Int{
for a in 1..<1000/3{
	for b in a..<1000/2{
		let c = 1000-a-b
		if (a*a+b*b == c*c) {
			print("\(a),\(b),\(c)")
			return a*b*c
		}
	}
}
	return 0
}

print(pytriplet())
