public extension Collection {
    /// A Boolean value indicating whether the collection is not empty.
    var isNotEmpty: Bool {
        !isEmpty
    }
    
    /// Returns nil if the collection is empty, otherwise self.
    var nilIfEmpty: Self? {
        isEmpty ? nil : self
    }
    
    /// Returns the only element in the collection.
    /// If the collection does not contain a single value, nil is returned instead.
    var single: Element? {
        count == 1 ? first : nil
    }
    
    /// Returns the element at the specified index.
    /// If the index does not exist in the collection, nil is returned instead.
    subscript(safeIndex index: Index) -> Element? {
        get {
            indices.contains(index) ? self[index] : nil
        }
    }
}
