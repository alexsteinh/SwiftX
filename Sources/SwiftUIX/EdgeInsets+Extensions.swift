#if canImport(SwiftUI)

import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
public extension EdgeInsets {
    init(vertical: CGFloat, horizontal: CGFloat) {
        self.init(top: vertical, leading: horizontal, bottom: vertical, trailing: horizontal)
    }
}

#endif
