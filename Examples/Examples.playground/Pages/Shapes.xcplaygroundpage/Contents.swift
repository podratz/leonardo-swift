import Leonardo
import SwiftUI
import PlaygroundSupport

struct SquaredCircleCanvas: View {
    @State var roundness = 0.5

    var body: some View {
        EmptyView()
        VStack {
            ZStack {
                Circle(area: 50_000)
                    .opacity(0.2)
                    .foregroundColor(.gray)
                SquaredCircle(area: 50_000, roundness: roundness)
                    .opacity(0.2)
                    .foregroundColor(.red)
                Square(area: 50_000)
                    .opacity(0.2)
                    .foregroundColor(.gray)
            }
            Slider(value: $roundness, in: 0...1)
        }
    }
}

let canvas = SquaredCircleCanvas()
PlaygroundPage.current.setLiveView(canvas)
