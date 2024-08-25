//
//  frame.swift
//  
//
//  Created by Nick on 25.08.24.
//

import SwiftUI

public struct Frame: ViewModifier {
    
    let length: CGFloat
    
    public func body(content: Content) -> some View {
        content
            .frame(width: length, height: length)
    }
    
}

public extension View {
    
    func frame(length: Double) -> some View {
        modifier(Frame(length: length))
    }
    
}
