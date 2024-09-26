//
//  File.swift
//  
//
//  Created by Nick on 24.08.24.
//

import SwiftUI

public extension View {

    @inlinable
    nonisolated func aspectRatio(
        _ aspectRatio: GeometricRatio<some BinaryFloatingPoint>,
        contentMode: ContentMode = .fit
    ) -> some View {
        self.aspectRatio(CGFloat(aspectRatio.quotient), contentMode: contentMode)
    }
        
}
