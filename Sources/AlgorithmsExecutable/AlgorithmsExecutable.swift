import Algorithms
import Foundation

@main
struct AlgorithmsExecutable {

    static func main() {
        var array: [Int] = [1, 2, 3, 1]
        // for _ in 1..<1_000_000 {
        // array.append(Int.random(in: 0..<1_000_000))
        // }
        guard let logNpeakElement = array.findPeakElementLogN() else {
            print("no peak element")
            return
        }

        guard let peakElement = array.findPeakElement() else {
            print("no peak element")
            return
        }
        print(logNpeakElement)
        print(peakElement)
        if logNpeakElement != peakElement {
            print("errou")
        }
    }
}
