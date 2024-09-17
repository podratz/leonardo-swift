//
//  frame.swift
//  
//
//  Created by Nick on 25.08.24.
//

import SwiftUI

public extension View {

    /// Creates a frame modifier for which both sides are constrained to a common length.
    func frame(length: Double) -> some View {
        modifier(FrameModifier(length: length))
    }

}

public struct FrameModifier: ViewModifier {
    
    let length: Double

    public func body(content: Content) -> some View {
        content.frame(width: length, height: length)
    }
    
}
