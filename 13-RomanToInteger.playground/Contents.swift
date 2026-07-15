class Solution {
    func romanToInt(_ s: String) -> Int  {
        let romanValues: [Character: Int] = [
            "I": 1, "V": 5, "X": 10, "L": 50,
            "C": 100, "D": 500, "M": 1000
        ]
        var result = 0
        let chars = Array(s)
        
        for i in 0..<chars.count {
            // Process each character at index i
            let currValue = romanValues[chars[i]]!
            if i + 1 < chars.count, let nextValue = romanValues[chars[i+1]], currValue < nextValue{
                result -= currValue
            } else {
                result += currValue
            }
        }
        
        return result
    }
}

let value: String = "MCMXCIV"
let solution = Solution()

print(solution.romanToInt(value))
