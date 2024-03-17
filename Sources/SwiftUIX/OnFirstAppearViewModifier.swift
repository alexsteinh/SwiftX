#if canImport(SwiftUI)

import SwiftUI

/// A view modifier that performs the given action only if the view is shown for the first time.
@available(iOS 13.0, macOS 10.15, *)
public struct OnFirstAppearViewModifier: ViewModifier {
    @State private var didAppear: Bool = false
    private let action: () -> Void
    
    /// - Parameter action: Action to perform when the view is shown for the first time.
    public init(perform action: @escaping () -> Void) {
        self.action = action
    }
    
    public func body(content: Content) -> some View {
        content.onAppear {
            guard !didAppear else { return }
            didAppear = true
            action()
        }
    }
}

@available(iOS 13.0, macOS 10.15, *)
public extension View {
    /// Performs the given action if the view is shown for the first time.
    /// - Parameter action: Action to perform when the view is shown for the first time.
    func onFirstAppear(perform action: @escaping () -> Void) -> some View {
        modifier(OnFirstAppearViewModifier(perform: action))
    }
}

#endif
