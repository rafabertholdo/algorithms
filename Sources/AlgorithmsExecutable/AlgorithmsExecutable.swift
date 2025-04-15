import Algorithms
import Foundation

@main
struct AlgorithmsExecutable {

  static func main() {
    let array = [10, 20, 30, 10]
    guard let peakElement = array.findPeakElementLogN() else {
      print("no peak element")
      return
    }
    print(peakElement)
  }
}
