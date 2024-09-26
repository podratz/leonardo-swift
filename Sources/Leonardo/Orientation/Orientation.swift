//
//  Orientation.swift
//  Leonardo
//
//  Created by Nick on 27.09.24.
//

public enum Orientation: CaseIterable, CustomStringConvertible {
    case automatic, horizontal, vertical

    public var description: String {
        switch self {
        case .automatic: "Automatic"
        case .horizontal: "Horizontal"
        case .vertical: "Vertical"
        }
    }

}
