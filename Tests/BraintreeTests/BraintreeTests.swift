import XCTest
@testable import Braintree

final class BraintreeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Braintree().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
