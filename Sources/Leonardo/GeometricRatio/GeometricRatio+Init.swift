//
//  GeometricRatio+Init.swift
//  Leonardo
//
//  Created by Nick on 26.09.24.
//

public extension GeometricRatio where Value: FloatingPoint {
    /// Initializes a `GeometricRatio` with a numerator and a denominator.
    ///
    /// This initializer computes the ratio by dividing the given numerator by the denominator.
    /// The resulting ratio is stored in the `value` property. The ratio is computed as `numerator / denominator`.
    ///
    /// - Parameters:
    ///   - numerator: The numerator (the top number in a fraction), which will be divided by the denominator.
    ///   - denominator: The denominator (the bottom number in a fraction), which the numerator is divided by.
    ///
    /// - Throws: A `GeometricRatioError.invalidDenominator` error if the denominator is zero, since division by zero is undefined.
    ///
    /// - Example:
    ///   ```
    ///   let ratio = try? GeometricRatio(numerator: 10, denominator: 20)
    ///   print(ratio?.value) // Output: 0.5
    ///   ```
    ///
    /// - Note: Ensure that the denominator is not zero to avoid throwing an error.
    init(of numerator: Value, to denominator: Value) throws(GeometricRatioError) {
        guard denominator != 0 else { throw .invalidDenominator }
        self.quotient = numerator / denominator
        self.name = nil
    }
}
