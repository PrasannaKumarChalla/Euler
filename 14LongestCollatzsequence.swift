/*#14
Longest Collatz sequence
https://projecteuler.net/problem=14
**/

/* Solved with bruteforcing, we start from 2 to mil and calculate collatz seq length. But for efficience, added a cache array which will store lengths of previously calculated numbers. 
*/
let mil = 1000000

var sequenceLength = 0
var numberWithHighestSeqLength = 0
//cache array inited with first two lengths. we will start appending from 2.
var cache:[Int] = [0,1]
for i in 2...mil {
	var temp = i
	var templength = 0
	// if the number became 1 or became smaller than i we knew the rest of the length.
	while(temp != 1 && temp >= i) {
		if(temp%2 == 0) {
			temp = temp/2
		} else {
			temp = 3*temp+1
		}
		templength += 1
	}
	//calculated length + the length of the smaller numbers.
	cache.append(templength + cache[temp])
	 	if(cache[i]>sequenceLength) {
	 		sequenceLength = cache[i]
	 		numberWithHighestSeqLength = i
	 	}
}
print(numberWithHighestSeqLength)
