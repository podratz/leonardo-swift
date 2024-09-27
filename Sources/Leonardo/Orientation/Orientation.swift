//
//  Orientation.swift
//  Leonardo
//
//  Created by Nick on 27.09.24.
//

public enum Orientation: Int, Identifiable, CaseIterable, CustomStringConvertible {

    case vertical = -1
    case horizontal = 1

    public var description: String {
        switch self {
        case .vertical: "Vertical"
        case .horizontal: "Horizontal"
        }
    }

    public var id: Int {
        rawValue
    }

    public var sign: Int {
        rawValue
    }

}
