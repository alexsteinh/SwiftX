public extension Collection where Element: BinaryInteger {
    /// The sum of the collection. Defaults to `0` if no elements are present.
    func sum() -> Element {
        reduce(into: 0) { acc, next in
            acc += next
        }
    }
}

public extension Collection where Element: BinaryFloatingPoint {
    /// The sum of the collection. Defaults to `0` if no elements are present.
    func sum() -> Element {
        reduce(into: 0) { acc, next in
            acc += next
        }
    }
}
