import XCTest
import SwiftX

final class CollectionTests: XCTestCase {
    func testNotEmpty() {
        XCTAssertTrue([1].isNotEmpty)
        XCTAssertFalse([].isNotEmpty)
    }
    
    func testNilIfEmpty() {
        XCTAssertNil([].nilIfEmpty)
        XCTAssertNotNil([1].nilIfEmpty)
    }
    
    func testSingle() {
        XCTAssertEqual([1].single, 1)
        XCTAssertNil([].single)
        XCTAssertNil([1, 2].single)
    }
    
    func testSafeIndex() {
        let nums = [1, 2, 3]
        XCTAssertEqual(nums[0], nums[safeIndex: 0])
        XCTAssertNil(nums[safeIndex: 3])
    }
    
    func testSum() {
        XCTAssertEqual([Int]().sum(), 0)
        XCTAssertEqual([Double]().sum(), 0)
        XCTAssertEqual((1...10).sum(), 55)
        XCTAssertEqual([0.5, 1.5].sum(), 2.0)
    }
}
