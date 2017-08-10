import Foundation

func powerDigitSum(_ a:Int, _ b:Int) -> Int{
	var digitArray = [1]
	
	for _  in 1...b {
		var carry = 0
		for j in 0..<digitArray.count {
			let tmp = (digitArray[j] * a) + carry
			carry = tmp/10
			digitArray[j] = tmp%10
		}
		if carry > 0 {
			digitArray.append(carry)
		}
	}
	return digitArray.reduce(0, +)
}
print(powerDigitSum(2, 1000))
