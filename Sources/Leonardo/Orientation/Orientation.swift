//
//  Orientation.swift
//  Leonardo
//
//  Created by Nick on 27.09.24.
//

public enum Orientation: CaseIterable, CustomStringConvertible {
    case landscape, portrait

    public var description: String {
        switch self {
        case .landscape: "Landscape"
        case .portrait: "Portrait"
        }
    }

    public var sign: Int {
        switch self {
        case .landscape: 1
        case .portrait: -1
        }
    }

}
