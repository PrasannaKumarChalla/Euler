import Foundation
//returns all the prime factors of a number(including duplicates).
func primeFactors(_ n:inout Int)->[Int] {
	var primeFactors = [Int]()
	while(n%2 == 0) {
		primeFactors.append(2)
	 n /= 2
	}
	//no even primes from here,and the prime gap is aleast 2 
	//so stride by 2.
	for i in stride(from: 3, to: Int(sqrt(Float(n))), by: 2){
		print(i)
		while(n%i == 0){
			primeFactors.append(i)
			n/=i
		}
	}
	if(n>2){
		primeFactors.append(n)
	}
	return primeFactors
}
var t = 600851475143
print(primeFactors(&t).max())
