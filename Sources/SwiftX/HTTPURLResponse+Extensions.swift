#if canImport(Foundation)

import Foundation

public extension HTTPURLResponse {
    var isOk: Bool {
        (200..<300).contains(statusCode)
    }
}

#endif
