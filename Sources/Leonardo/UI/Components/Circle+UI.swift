//
//  SwiftUIView.swift
//  
//
//  Created by Nick on 26.08.24.
//

import SwiftUI

extension Circle: View where Number == Double {
    public var body: some View {
        SwiftUI.Circle()
            .frame(length: diameter)
    }
}

#Preview {
    Circle(area: 10_000)
}
