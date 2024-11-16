import Leonardo
import SwiftUI
import PlaygroundSupport

struct Canvas: View {

    let canvasWidth: Double = 300
    let maxNumberOfTerms = 5
    
    var body: some View {
        section(.gold, .yellow)
        section(.silver, .gray)
        section(.bronce, .orange)
        section(.plastic, .green)
    }
    
    func section(_ ratio: Ratio, _ color: Color) -> some View {
        ForEach(1...maxNumberOfTerms, id: \.self) { numberOfTerms in
            let continuedRatio = ContinuedRatio<Double>(ratio, numberOfTerms: numberOfTerms)
            let segments = canvasWidth.segmented(by: continuedRatio)
            row(segments, color)
        }
    }
    
    func row(_ segments: [Double], _ color: Color) -> some View {
        HStack(spacing: 0) {
            ForEach(segments, id: \.self) { segmentWidth in
                segment()
                    .frame(width: segmentWidth)
                    .overlay(color)
            }
        }
    }
    
    func segment() -> some View {
        Rectangle()
            .stroke(lineWidth: 5)
            .frame(height: 50)
    }

}

let liveView = Canvas().padding()
PlaygroundPage.current.setLiveView(liveView)
