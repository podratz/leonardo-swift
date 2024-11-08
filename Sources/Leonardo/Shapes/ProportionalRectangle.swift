//
//  RatioRectangle.swift
//  Leonardo
//
//  Created by Nick on 19.09.24.
//

import SwiftUI

public struct ProportionalRectangle: InsettableShape {

    public var animatableData: Double {
        get { aspectRatio }
        set { aspectRatio = newValue }
    }

    public func inset(by amount: CGFloat) -> ProportionalRectangle {
        var newRect = self
        newRect.inset += amount
        return newRect
    }

    public func path(in rect: CGRect) -> Path {
        Path { path in

            if orientation == .landscape {
                let shortSide = rect.height / aspectRatio

                let top = rect.midY - (shortSide / 2) + inset
                let bottom = rect.midY + (shortSide / 2) - inset
                let left = 0 + inset
                let right = rect.width - inset

                path.move(to: .init(x: right, y: top))
                path.addLine(to: .init(x: left, y: top))
                path.addLine(to: .init(x: left, y: bottom))
                path.addLine(to: .init(x: right, y: bottom))
                path.addLine(to: .init(x: right, y: top))
                path.closeSubpath()
            } else {
                let shortSide = rect.width / aspectRatio

                let top = 0 + inset
                let bottom = rect.height - inset
                let left = rect.midX - (shortSide / 2) + inset
                let right = rect.midX + (shortSide / 2) - inset

                path.move(to: .init(x: right, y: top))
                path.addLine(to: .init(x: left, y: top))
                path.addLine(to: .init(x: left, y: bottom))
                path.addLine(to: .init(x: right, y: bottom))
                path.addLine(to: .init(x: right, y: top))
                path.closeSubpath()
            }
        }
    }

    /// Creates a rectangle with the provided ratio for its sides.
    public init(aspectRatio: CGFloat, orientation: Orientation = .landscape) {
        self.aspectRatio = aspectRatio
        self.orientation = orientation
    }

    /// Specifies whether this rectangle should be displayed in landscape or portrait orientation.
    public enum Orientation : Sendable { case landscape, portrait }

    private let orientation: Orientation
    private var aspectRatio: CGFloat
    private var inset: CGFloat = 0

}

extension ProportionalRectangle {

    /// Creates a rectangle with the provided ratio used for
    public init(ratio: Ratio, orientation: Orientation = .landscape) {
        self.init(aspectRatio: ratio.quotient, orientation: orientation)
    }

}

#Preview {
    ProportionalRectangle(ratio: .gold, orientation: .landscape)
        .strokeBorder(.red, lineWidth: 10)
        .frame(length: 200)
    ProportionalRectangle(ratio: .gold, orientation: .landscape)
        .strokeBorder(.red, lineWidth: 60)
        .frame(length: 200)
    ProportionalRectangle(ratio: .gold, orientation: .landscape)
        .strokeBorder(.red, lineWidth: 170)
        .frame(length: 200)
    .edgesIgnoringSafeArea(.all)
}
