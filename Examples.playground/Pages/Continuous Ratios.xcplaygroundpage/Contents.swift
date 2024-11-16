import Leonardo
import SwiftUI
import PlaygroundSupport

let ratio = ContinuedRatio<Double>(.gold, numberOfTerms: 3)

struct SquaredCircleCanvas: View {

    let width: Double = 300
    
    var widthSegments: [Double] {
        width.segmented(by: ratio)
    }
    
    var body: some View {
        HStack {
            ForEach(widthSegments, id: \.self) { widthSegment in
                Rectangle()
                    .stroke(lineWidth: 3)
                    .frame(width: widthSegment, height: 50)
            }
        }
    }

}

let liveView = SquaredCircleCanvas().padding()
PlaygroundPage.current.setLiveView(liveView)
