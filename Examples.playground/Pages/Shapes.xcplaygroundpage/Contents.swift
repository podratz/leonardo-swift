import Leonardo
import SwiftUI
import PlaygroundSupport

// MARK: - Squaring the circle.

// That is: creating a square and a circle with the same area.
// In this example, the transformation is continuous and interactive!

let commonArea: CGFloat = 50_000

struct SquaredCircleCanvas: View {

    @State var roundness = 0.5

    var body: some View {
        ZStack {
            Circle(area: commonArea)
                .opacity(0.2)
                .foregroundColor(.gray)
            SquaredCircle(area: commonArea, roundness: roundness)
                .opacity(0.4)
                .foregroundColor(.indigo)
            Square(area: commonArea)
                .opacity(0.2)
                .foregroundColor(.gray)
        }
        Slider(value: $roundness, in: 0...1)
    }

}

let liveView = SquaredCircleCanvas().padding()
PlaygroundPage.current.setLiveView(liveView)
