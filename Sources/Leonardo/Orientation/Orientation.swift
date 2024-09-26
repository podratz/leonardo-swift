//
//  Orientation.swift
//  Leonardo
//
//  Created by Nick on 27.09.24.
//

enum Orientation: CaseIterable, CustomStringConvertible {
    case automatic, horizontal, vertical

    var description: String {
        switch self {
        case .automatic: "Automatic"
        case .horizontal: "Horizontal"
        case .vertical: "Vertical"
        }
    }

}
