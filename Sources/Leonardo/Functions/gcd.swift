//
//  gcd.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 15.11.24.
//

func gcd(_ terms: [Int]) -> Int {
    terms.reduce(0, Leonardo.gcd)
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let remainder = abs(a) % abs(b)
    if remainder != 0 {
        return gcd(abs(b), remainder)
    } else {
        return abs(b)
    }
}
