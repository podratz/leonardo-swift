//
//  Orientation.swift
//  Leonardo
//
//  Created by Nick on 27.09.24.
//

public enum Orientation: Int, Identifiable, CaseIterable, CustomStringConvertible {

    case portrait = -1
    case landscape = 1

    public var description: String {
        switch self {
        case .portrait: "Portrait"
        case .landscape: "Landscape"
        }
    }

    public var id: Int {
        rawValue
    }

    public var sign: Int {
        rawValue
    }

}
