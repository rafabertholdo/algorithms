import Algorithms
import Foundation

@main
struct AlgorithmsExecutable {

    static func main() {
        print(TwoSum.findIndexes([2, 7, 11, 15], target: 9))
        print(TwoSum.findIndexes([3, 2, 4], target: 6))
        print(TwoSum.findIndexes([3, 3], target: 6))
        print(TwoSum.findIndexesLinear([2, 7, 11, 15], target: 9))
        print(TwoSum.findIndexesLinear([3, 2, 4], target: 6))
        print(TwoSum.findIndexesLinear([3, 3], target: 6))
    }
}
