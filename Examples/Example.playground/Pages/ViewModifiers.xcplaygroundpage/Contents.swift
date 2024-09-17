import Leonardo
import PlaygroundSupport
import SwiftUI

// MARK: - Golden rectangle preview.

let ratio: Ratio = .golden

let canvasLength: Double = 300
let contentWidth: Double = canvasLength - ratio.proportion(of: canvasLength)

PlaygroundPage.current.setLiveView(
    EmptyView()
        .frame(length: canvasLength)
        .overlay(
            Rectangle()
                .fill(.yellow)
                .aspectRatio(ratio)
                .frame(width: contentWidth)
        )
)
