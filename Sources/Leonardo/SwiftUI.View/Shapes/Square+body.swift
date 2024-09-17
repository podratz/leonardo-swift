//
//  Square+UI.swift
//
//
//  Created by Nick on 26.08.24.
//

import SwiftUI

extension Square: View where Number == Double {
    public var body: some View {
        Rectangle()
            .frame(length: length)
    }
}

#Preview {
    Square(area: 10_000)
}
