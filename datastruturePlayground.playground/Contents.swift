//Find the second largest number in the array
let array = [10,9,8,7,6,5,11]

func findSelecondLargestNumber(array: [Int]) -> Int {
    var firstLargest = Int.min
    var secondLargest = Int.min
    for number in array {
        if number > firstLargest {
            secondLargest = firstLargest
            firstLargest = number
        } else if number > secondLargest  && secondLargest != firstLargest {
            secondLargest = number
        }
    }
    return secondLargest
}

print(findSelecondLargestNumber(array: array))

//Write down a string reversal program.For instance, If the given string is “tfiws,” the output should be “swift”.

func reverseSring(stringInput: String) -> String {
    var startIndex = 0
    var endIndex = stringInput.count - 1
    var stringArray = Array(stringInput)
    while startIndex < endIndex {
        let temp = stringArray[endIndex]
        stringArray[endIndex] = stringArray[startIndex]
        stringArray[startIndex] = temp
        startIndex += 1
        endIndex -= 1
    }
  return String(stringArray)
}
print(reverseSring(stringInput: "abcd"))
// tfiws s fiw t  s wif t
//

// 3 sum problem:
//Input: nums = [-1,0,1,2,-1,-4]

func threeSum(_ nums: [Int]) -> [[Int]] {
    var triplets = Set<[Int]>()
    let sortedArray = nums.sorted()
    print(sortedArray)
    for i in 0..<sortedArray.count - 2 {
        let first = sortedArray[i]
        var left = i + 1
        var right = sortedArray.count - 1
        while left < right {
            let sum = sortedArray[left] + sortedArray[right] + first
            if sum < 0 {
                left += 1
            } else if sum > 0 {
                right -= 1
            } else {
                triplets.insert([first, sortedArray[left], sortedArray[right]])
                left += 1
                right -= 1
            }
        }
    }
    return Array(triplets)
}

print(threeSum([-1, -1, 0, 1, 2]))


func threeSumClosest(_ nums: [Int], target: Int) -> Int {
    var triplets = Set<[Int]>()
    let sortedArray = nums.sorted()
    var minDifference = Int.max
    var resultSum = Int.min

    print(sortedArray)
    for i in 0..<sortedArray.count - 2 {
        let first = sortedArray[i]
        var left = i + 1
        var right = sortedArray.count - 1
        while left < right {
            let sum = sortedArray[left] + sortedArray[right] + first
            if sum < target {
                left += 1
            } else if sum > target {
                right -= 1
            } else if sum == target {
                return target
            }
            print("sum:\(sum)")
                            
            let diiferent = abs(target - sum)
            if diiferent < minDifference {
                resultSum = sum
                minDifference = diiferent
            }
        }
    }
    return resultSum
}

print(threeSumClosest([1,1,1,0], target: -100))

func maxSubArray(_ nums: [Int]) -> Int {
    
var maxSum = nums[0]
    var sum = 0
    for i in 0..<nums.count {
        sum = 0
        for j in i..<nums.count {
            sum += nums[j]
            if sum > maxSum {
                maxSum = sum
            }
        }
    }
   return maxSum
}

print(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))


func maxSubArrayKadaneAlgorithm(_ nums: [Int]) -> Int {
    
var maxSum = nums[0]
var sum = nums[0]
    for i in 1..<nums.count {
        if sum >= 0 {
            sum += nums[i]
        } else {
            sum = nums[i]
        }
        if maxSum < sum {
            maxSum = sum
        }
    }
   return maxSum
}

print(maxSubArrayKadaneAlgorithm([-2,1,-3,4,-1,2,1,-5,4]))

func sortinAlgorithm(input: inout [Int]) {
    for j in 0..<input.count {
        for i in 0..<input.count-1-j {
            if input[i] > input[i + 1] {
                input.swapAt(i, i + 1)
            }
        }
    }
    print("sorted:\(input)")
}

var unsortedArray = [-2,1,-3,4,-1,2,1,-5,4]
sortinAlgorithm(input: &unsortedArray)

func findUnionOfTwoSortedArray(array1: [Int], array2: [Int]) {
    let array1Count = array1.count
    let array2Count = array2.count
    var i = 0
    var j = 0
    var unionArray = [Int]()
    while i < array1Count && j < array2Count {
        if array1[i] < array2[j] {
            if unionArray.last != array1[i] {
                unionArray.append(array1[i])
            }
            i += 1
        } else if array1[i] > array2[j] {
            if unionArray.last != array2[j] {
                
                unionArray.append(array2[j])
            }
            j += 1
        } else {
            if unionArray.last != array1[i] {
                unionArray.append(array1[i])
            }
            i += 1
            j += 1
        }
    }
    while i < array1Count {
        if unionArray.last != array1[i] {
            
            unionArray.append(array1[i])
        }
        i += 1
    }
    while j < array2Count {
        if unionArray.last != array2[j] {
            unionArray.append(array2[j])
        }
        j += 1
    }
print(unionArray)
}

findUnionOfTwoSortedArray(array1: [1,2,4,5,6], array2: [2,3,5,7])

//Remove Element

//Input: nums = [3,2,2,3], val = 3
func removeElement(input: inout [Int], remove: Int) {
    var i = 0
    
    for j in 0..<input.count {
        if input[j] != remove {
            input[i] = input[j]
            i += 1
        }
    }
  
    while i<input.count {
        input[i] = 0
        i += 1
    }
    print(input)
}
var inputrray = [0,1,2,2,3,0,4,2]
removeElement(input: &inputrray, remove: 2)



    func rotate(_ nums: inout [Int], _ k: Int) {
        
        let n = nums.count

        // Modulo ensures the range within the length and avoids unnecessary rotation.
        let k = k % n
        reverse(&nums, 0, n-1)
        reverse(&nums, 0, k-1)
        reverse(&nums, k, n-1)
    }

    func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {

        var start = start
        var end = end

        while start < end{

            let temp = nums[start]
            nums[start] = nums[end]
            nums[end] = temp

            start += 1
            end -= 1
        }
    }
var sssd = [1,2,3,4]
rotate(&sssd, 2)
print(sssd)
