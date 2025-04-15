import Foundation

public extension Array where Element == Int {
  func findPeakElement() -> Int? {
    guard self.count > 0 else {

      return nil
    }

    var maxIndex = -1
    var maxNumber = Int.min

    for (index, item) in self.enumerated() {
      if item >= maxNumber {
        maxNumber = item
        maxIndex = index
      }
    }
    return maxIndex >= 0 ? maxIndex : nil
  }

  func findPeakElementLogN() -> Int? {
    guard self.count > 0 else {

      return nil
    }
    var left = 0
    var right = self.count - 1
    var mid = 0

    while left < right {
      mid = (right - left) / 2 + left

      if self[mid] > self[mid + 1] {
        right = mid
      } else {
        left = mid + 1
      }
    }

    return left
  }
}
