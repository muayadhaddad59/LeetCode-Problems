class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let num = String(x)
        return num == String(num.reversed())
    }
}

let solution = Solution()
print(solution.isPalindrome(121))
