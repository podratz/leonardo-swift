import Leonardo
import PlaygroundSupport
import SwiftUI

let ratio: Ratio<Double> = .gold



// MARK: - Rectangle Preview

let canvasLength: Double = 300
let contentLength: Double = canvasLength - ratio.proportion(of: canvasLength)

struct Canvas<Content: View>: View {
    @ViewBuilder var content: Content
    
    var body: some View {
        Color.white
            .overlay {
                content
            }
    }
}

struct RatioRectangle: View {
    let ratio: Ratio<Double>
    
    var body: some View {
        Rectangle()
            .aspectRatio(ratio, contentMode: .fit)
    }
}

PlaygroundPage.current.setLiveView(
    Canvas {
        RatioRectangle(ratio: ratio)
            .frame(maxWidth: contentLength, maxHeight: contentLength)
    }
    .frame(width: canvasLength, height: canvasLength)
)
