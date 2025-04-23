/**
 * Question Link: https://leetcode.com/problems/two-sum/
 */

import Foundation

public class TwoSum {
    public static func findIndexes(_ nums: [Int], target: Int) -> [Int] {
        //brute force strat, check sum of every combination until find

        for i in 0..<nums.count - 1 {
            for x in i + 1..<nums.count {
                if nums[i] + nums[x] == target {
                    return [i, x]
                }
            }
        }
        return []
    }

    public static func findIndexesLinear(_ nums: [Int], target: Int) -> [Int] {
        // save indexes then compare with the difference of current and target
        var savedIndexes: [Int: Int] = [:]

        for (index, num) in nums.enumerated() {
            if let indexFromSavedIndexes = savedIndexes[target - num] {
                return [indexFromSavedIndexes, index]
            }
            savedIndexes[num] = index
        }
        return []
    }
}
