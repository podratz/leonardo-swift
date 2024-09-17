//
//  SquaredCircle.swift
//
//
//  Created by Nick on 26.08.24.
//

import SwiftUI

extension SquaredCircle: View where Number == Double {
    public var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .frame(length: 2 * radius)
    }
}

#Preview {
    ZStack {
        Circle(area: 50_000)
            .opacity(0.2)
            .foregroundColor(.red)
        SquaredCircle(area: 50_000)
            .opacity(0.2)
            .foregroundColor(.green)
        Square(area: 50_000)
            .opacity(0.2)
            .foregroundColor(.blue)
    }
}
