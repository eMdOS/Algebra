import Algebra
import XCTest

final class ValidatedTests: XCTestCase {
    func testValid() {
        let valid = Validated<String, String>.valid(name)
        XCTAssertFalse(valid.isInvalid)
        XCTAssertTrue(valid.isValid)
        XCTAssertNil(valid.errors)
        XCTAssertEqual(valid.value, name)
    }

    func testInvalid() {
        let invalid = Validated<String, String>.error(name)
        XCTAssertFalse(invalid.isValid)
        XCTAssertTrue(invalid.isInvalid)
        XCTAssertNil(invalid.value)
        XCTAssertEqual([name], invalid.errors)
    }
}
