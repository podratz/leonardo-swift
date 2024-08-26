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
        SquaredCircle(area: 10_000, cornerRadius: -1000)
            .foregroundColor(.blue)
        SquaredCircle(area: 10_000, cornerRadius: 40)
            .foregroundColor(.red)
    }
}
