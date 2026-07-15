class Solution {
    @discardableResult
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums.removeAll { $0 == val }
        return nums.count
    }
}

var nums = [3, 2, 2, 3]
let val = 3
let solution = Solution()
let newCount = solution.removeElement(&nums, val)

print("Filtered nums: \(nums)")
print("New count: \(newCount)")
