//Remove Invalid Parentheses

//Basic stack implementation.
struct Stack<E> {
	private var array = [E]()
	func count() {
		array.count
	}
	mutating func push(_ element: E) {
		array.insert(element, at: 0)
	}
	mutating func pop() {
		if array.isEmpty {
			return
		}
		array.removeFirst()
	}
	func elems() -> [E] {
		return array
	}
	func isEmpty() -> Bool {
		return array.isEmpty
	}
}


func balanceParnthesis(_ str: String) -> String {
	//mutable copy of str
	var result = str
	//This is to keep track of offset between `str` and result.
	var offst = 0
	var stack = Stack<Int>()
	
	for index in str.characters.indices {
		//if the char is "(" push the index to stack in integer form.
		if str[index] == "(" {
			stack.push(str.distance(from: str.startIndex, to: index))
		} else if str[index] == ")" {
			//if the char is ")" and the stack is empty that means left paranths appeared with out any right paranths so delete it and increment the offset
			if stack.isEmpty() {
				print(index)
				result.remove(at:  str.index(index, offsetBy: -(offst)))
				offst += 1
			}
			//else pop the stack that means the right paranths in the stack is valid.
			else { stack.pop() }
		}
	}
	//if there are any indices in stack that means there are some invalid right paranths delete them.
	for elem in stack.elems() {
		//as `result` might have been deviated from the `str` use offset to delete right char.
		result.remove(at: str.index(str.startIndex, offsetBy: (elem-offst)))
	}
	return result
}

//print(balanceParnthesis("(())()"))
