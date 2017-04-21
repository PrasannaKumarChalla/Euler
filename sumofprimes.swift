/**#10
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
*/

import Foundation

func sumOfPrimes(n:Int) -> Int {
	var sum = 2
	for i in 3...n {
		if isPrime(i) {
			sum += i
		}
	}
	return sum
}

func isPrime(_ n:Int) -> Bool {
	let t = Int(sqrt(Double(n)))+1
	for i in 2..<t {
		if n%i == 0 {
			return false
		}
	}
	return true
}

print(sumOfPrimes(n:2000000))
