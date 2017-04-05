/**#7
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
*/

#if os(OSX) || os(iOS)
import Darwin
#elseif os(Linux)
import Glibc
#endif

func nthPrime(_ n:Int)->Int{
	var i = 0
	var j = 2
	while(i < n){
		if(isPrime(j))
		{
			i += 1
		}
		j += 1
	}
	return j-1
}

func isPrime(_ n:Int)->Bool{
	
	let t = Int(sqrt(Double(n)))+1
	for i in 2..<t{
		if n%i == 0 {
			return false
		}
	}
	return true
}

print(nthPrime(10001))

