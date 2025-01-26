/*
 
Selection explanation: -------------------------------------------------------------------------------
 
 The Selection Sort algorithm sorts an array by repeatedly selecting the smallest element from the
 unsorted part of the array and moving it to the current position. This is done in several passes
 until the entire array is sorted.
 
Task: ------------------------------------------------------------------------------------------------
 
 Write a function called selectionSort that takes a list (array) of integers as input and sorts the
 array in ascending order. Use the following algorithm:
 
    1. iterate through the array and find the smallest element in the unsorted area of the array in each step.
    2. swap the smallest element with the first element of the unsorted area.
    3. repeat this process until the entire array is sorted.
 
 */


func selectionSort(list: Array<Int>) -> Array<Int>? {
    
    var sortedList = list
    
    for indexValue in 0..<sortedList.count {
        
        var minIndex = indexValue
       
        for i in (indexValue + 1)..<sortedList.count {
            print("sollte 1-5: \(i)")
            if sortedList[i] < sortedList[minIndex] {
                minIndex = i
            }
        }
        if minIndex != indexValue {
            sortedList.swapAt(indexValue, minIndex)
        }
       
    }

    return sortedList
}

/*
    @Info
    Bubble Sort is a basic sorting algorithm. But in reality its not that efficient because of its time
    complexity O(n²), which is very inefficient for large data sets.
 */

func bubbleSort(list: Array<Int>) -> Array<Int>? {
    
    var sortedList = list
    
    for index in 0..<sortedList.count {
        
        for i in 0..<(sortedList.count-index-1) {
            print("i: \(i)")
            if sortedList[i] > sortedList[i+1] {
                sortedList.swapAt(i, i+1)
            }
        }
    }
    return sortedList
}


func fibonacciSequence(upTo n: Int) -> [Int] {
    
    var sequence = [0, 1]
    
    for _ in 2..<n {
        let nextNumber = sequence[sequence.count - 1] + sequence[sequence.count - 2]
        sequence.append(nextNumber)
    }
    
    return sequence
}

func isPalindrome(_ userString: String) -> Bool {
    let characters = Array(userString.lowercased())
    var initialIndex = 0
    var finalIndex = characters.count - 1
    print("finalIndex: \(finalIndex)")
    print("characters[initialIndex]: \(characters[initialIndex])")
    print("characters[finalIndex]: \(characters[finalIndex])")
    while initialIndex < finalIndex {
        if characters[initialIndex] != characters[finalIndex] {
            return false
        }
        initialIndex += 1
        finalIndex -= 1
    }
    return true
}

let sampleString = "radar"
if isPalindrome(sampleString) {
    print("\(sampleString) is a palindrome!")
} else {
    print("\(sampleString) is not a palindrome.")
}
let result = fibonacciSequence(upTo: 10)
print(result)



var listThatShouldBeSorted = [16,24,51,3,22,11]
var sortedList = bubbleSort(list: listThatShouldBeSorted)

print(sortedList)


// How do you reverse a string? Hallo

func reversString(input: String) -> String {
    
    var reversedString: String = ""
    var stringIndex: Int = input.count
    
    for i in input {
        print("input: \(i)")
        reversedString = "\(i)" + reversedString
    }
    
    
    
    return reversedString
}

var reversStringFun = reversString(input: "Hallo")

print(reversStringFun)
