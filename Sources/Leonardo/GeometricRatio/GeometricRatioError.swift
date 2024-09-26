//
//  GeometricRatioError.swift
//  Leonardo
//
//  Created by Nick on 26.09.24.
//

import Foundation

/// Defines possible errors when creating a `GeometricRatio`.
public enum GeometricRatioError: LocalizedError {
    case invalidDenominator

    public var errorDescription: String? {
        "Invalid Denominator"
    }

    public var recoverySuggestion: String? {
        "The denominator cannot be zero because division by zero is undefined. Please provide a non-zero denominator."
    }

    public var failureReason: String? {
        "The denominator was zero."
    }
}
