func firstTask(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    
    for i in 0..<nums.count {
        let complement = target - nums[i]
        if let index = dict[complement] {
            return [index, i]
        }
        dict[nums[i]] = i
    }
    return []
}

firstTask([2, 7, 11, 15], 9)

// secondTask

func secondTask(_ roman: String) -> Int {
    let map : [Character : Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    var result = 0
    var lastValue = 0
    
    for char in roman.reversed() {
        let value = map[char]!
        if value < lastValue {
            result -= value
        } else {
            result += value
        }
        lastValue = value
    }
    
    return result
}

secondTask("LVIII")

// thirdTask

func thirdTask(_ x: Int) -> Bool {
    var b = x
    var c = 0
    while b > 0{
        c = c*10 + (b % 10)
        b = b/10
    }
    return c == x
}

thirdTask(0)

// forthTask

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var counter = 0
    for j in 1..<nums.count {
        if nums[j] != nums[counter] {
            counter += 1
            nums[counter] = nums[j]
        }
    }
    return counter + 1
}

var a = [1,1,2,2,3,4]
print(removeDuplicates(&a))
print(a)

