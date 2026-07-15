
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 2 {return nums.count}
        var insertIndex = 2
        
        for i in 2..<nums.count {
            if nums[i] != nums[insertIndex - 2] {
                nums[insertIndex] = nums[i]
                insertIndex += 1
            }
        }
        
        return insertIndex
    }
}

var input = [1,1,1,2,2,3]
let solution = Solution()
print(solution.removeDuplicates(&input))
