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
        _ aspectRatio: Ratio<Float>,
        contentMode: ContentMode
    ) -> some View {
        self.aspectRatio(CGFloat(aspectRatio.value), contentMode: contentMode)
    }
    
    @inlinable
    nonisolated func aspectRatio(
        _ aspectRatio: Ratio<Double>,
        contentMode: ContentMode
    ) -> some View {
        self.aspectRatio(CGFloat(aspectRatio.value), contentMode: contentMode)
    }
    
    @inlinable
    nonisolated func aspectRatio(
        _ aspectRatio: Ratio<CGFloat>,
        contentMode: ContentMode
    ) -> some View {
        self.aspectRatio(CGFloat(aspectRatio.value), contentMode: contentMode)
    }
        
}
