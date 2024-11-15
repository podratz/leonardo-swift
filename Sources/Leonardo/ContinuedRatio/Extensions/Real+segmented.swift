//
//  Real+segmented.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 16.11.24.
//

import RealModule

extension Real {
    
    func segmented(by ratio: ContinuedRatio<Self>) -> [Self] {
        ratio.segment(self)
    }
    
}
