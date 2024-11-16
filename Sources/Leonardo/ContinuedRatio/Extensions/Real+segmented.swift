//
//  Real+segmented.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 16.11.24.
//

import RealModule

public extension Real {
    
    func segmented(by ratio: ContinuedRatio<Self>) -> [Self] {
        ratio.segment(self)
    }
    
}

public extension Int {
    
    func segmented(by ratio: ContinuedRatio<Int>) -> [Double] {
        ratio.normalized.segment(Double(self))
    }
    
}
