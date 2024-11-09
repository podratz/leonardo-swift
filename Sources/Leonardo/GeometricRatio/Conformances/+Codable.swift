//
//  C.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 09.11.24.
//

extension GeometricRatio: Codable where Value: FloatingPoint & Codable {
    
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(numerator, forKey: .numerator)
        try container.encode(denominator, forKey: .denominator)
        if let name {
            try container.encode(name, forKey: .name)
        }
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let nominator = try container.decode(Value.self, forKey: .numerator)
        let denominator = try container.decode(Value.self, forKey: .denominator)
        let name = try? container.decode(String.self, forKey: .name)
        self.init(of: nominator, to: denominator, name: name)
    }
    
    private enum CodingKeys: String, CodingKey {
        case numerator
        case denominator
        case name
    }
    
}
