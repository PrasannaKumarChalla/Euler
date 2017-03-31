//Don't judge me by this code,I know this code is stupid.
extension String{
	subscript(i: Int) -> Character {
		if let ind = self.index(self.startIndex,offsetBy:i,limitedBy:self.endIndex) {
			return self[ind]
		}
		else{
					fatalError("String index out of bounds")
		}
	}
	
	func isPalindrome() -> Bool {
		var left = 0
		var right = self.characters.count-1
		while (left < right){
			if(self[left] != self[right]){
				return false
			}
			left = left+1
			right = right-1
		}
		return true
	}
}

func getHighest()->(Int,Int,Int){
var highest = 0
var a = 0
var b = 0
for i in stride(from:999,to:0,by:-1) {
	for j in stride(from:i,to:1,by:-1) {
		let k = i*j
		let str = "\(k)"
		//print(str)
		if(str.isPalindrome() && k > highest){
			highest = k
			a = i
			b = j
		}
	}
}
	return (highest,a,b)
}
print(getHighest())
