class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for item in 0..<nums.count {
            for item2 in 0..<nums.count {
                if item != item2 && nums[item] + nums[item2] == target {
                    return [item, item2]
                }
            }
        }

        return []
    }
}

let nums = [2, 7, 11, 15]
let target = 9

let s = Solution()
print(s.twoSum(nums, target))
