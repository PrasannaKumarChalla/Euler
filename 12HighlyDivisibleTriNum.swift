/*#12
https://projecteuler.net/problem=12
Highly divisible triangular number
*/
import Foundation

//returns number of divisors
func noOfDivisors(_ num:Int) -> Int {
	var divisors = 0
	//only need to go until sqrt(n)+1
	for i in stride(from:1, to:Int(sqrt(Float(num)))+1, by:1) {
		if(num % i == 0) {
			//if it is not a perfect square there would be 2
			//divisors i,num/i
			if i*i != num {
				divisors += 2
			} else {
				divisors += 1
			}
			
		}
	}
	
	return divisors
}

var n = 1
var next = 2
//we only iterate over /_\ numbers
while noOfDivisors(n) <= 500 {
	n += next
	next += 1
}

print("result: \(n)")
