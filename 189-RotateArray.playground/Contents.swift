class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var temp = nums
        for i in 0..<k {
            var numb = nums[nums.count - 1]
            nums.insert(numb, at: 0)
            nums.remove(at: nums.count - 1)
        }
        print(nums)
    }
}

var nums = [1,2,3,4,5,6,7]
var k = 3
let solution = Solution()
print(solution.rotate(&nums, k))
