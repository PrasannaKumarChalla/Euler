/*#13 Large sum
https://projecteuler.net/problem=13
*/
import Foundation


/*
Instead of calculating sum of numbers as bigInts, we can do summation of only required part of each number to get the result. As we want the first 10 digits of the sum we will need to add first left 10+buffer columns of each number. But we need to decide on appropriate buffer length, there are many sources on internet saying the appopriate size of buffer but here I am just assuming 5 as buffer(Why 5?. no specific reson). So we only consider first 15 digits out of 50 for addition.
*/
func sum(_ array:[String]){
	let arrayWith15 = array.map { str -> String in
		let indexOf15 = str.index(str.startIndex, offsetBy: 15)
		return str.substring(to: indexOf15)
	}
	let result = String(arrayWith15.map{Int($0)!}.reduce(0) {$0+$1})
	let indexOf10 = result.index(result.startIndex, offsetBy: 10)
	print(result.substring(to: indexOf10))
}

let dir = try? FileManager.default.url(for: .desktopDirectory,
                                       in: .userDomainMask, appropriateFor: nil, create: true)
if let fileUrl = dir?.appendingPathComponent("input").appendingPathExtension("txt") {
	let contents = try String.init(contentsOf: fileUrl, encoding: .utf8)
	let lines = contents.components(separatedBy: .newlines)
	sum(lines)
}