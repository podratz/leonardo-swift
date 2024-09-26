//
//  Orientation.swift
//  Leonardo
//
//  Created by Nick on 27.09.24.
//

public enum Orientation: CaseIterable, CustomStringConvertible {
    case automatic, landscape, portrait

    public var description: String {
        switch self {
        case .automatic: "Automatic"
        case .landscape: "Landscape"
        case .portrait: "Portrait"
        }
    }

    var sign: Int {
        switch self {
        case .automatic: 0
        case .landscape: 1
        case .portrait: -1
        }
    }

}
