/**
 * Question Link: https://leetcode.com/problems/find-peak-element/
 * Primary idea: Classic Binary Search
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

import Foundation

extension Array where Element == Int {
    public func findPeakElement() -> Int? {
        guard self.count > 0 else {
            return nil
        }
        guard self.count > 1 else {
            return 0
        }

        let lastIndex = self.count - 1
        for index in 0..<lastIndex {
            guard index == lastIndex else {
                return self[0] > self[lastIndex] ? 0 : lastIndex
            }
            if index == 0 {
                continue
            }
            if self[index] > self[index + 1] && self[index] > self[index - 1] {
                return index
            }
        }
        return nil
    }

    public func findPeakElementLogN() -> Int? {
        guard self.count > 0 else {
            return nil
        }
        var leftIndex = 0
        var rightIndex = self.count - 1

        while leftIndex < rightIndex {
            let midIndex = (rightIndex - leftIndex) / 2 + leftIndex

            let midValue = self[midIndex]
            let midRightValue = self[midIndex + 1]

            if midValue > midRightValue {
                rightIndex = midIndex
            } else {
                leftIndex = midIndex + 1
            }
        }

        return leftIndex
    }
}
