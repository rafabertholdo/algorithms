import Testing

@testable import Algorithms

@Test func testExample1PeakElement() {

    let array: [Int] = [1, 2, 3, 1]
    guard let logNpeakElement = array.findPeakElementLogN() else {
        Issue.record("no peak element")
        return
    }

    #expect(logNpeakElement == 2)
}

@Test() func testExample2Peakelement() {
    let array: [Int] = [1, 2, 1, 3, 5, 6, 4]
    guard let logNpeakElement = array.findPeakElementLogN() else {
        Issue.record("no peak element")
        return
    }

    #expect(logNpeakElement == 5)
}
