import Leonardo
import SwiftUI
import PlaygroundSupport

struct Canvas: View {

    let canvasWidth: Double = 200
    let maxNumberOfTerms = 13
    
    var body: some View {
        HStack {
            section(.platinum, .purple)
            section(.gold, .yellow)
            section(.silver, .gray)
            section(.bronze, .orange)
        }
        HStack {
            section(.plastic, .green)
            section(.sqrt2, .mint)
            section(.sqrt3, .blue)
            section(.sqrt5, .indigo)
        }
    }
    
    func section(_ ratio: Ratio, _ color: Color) -> some View {
        VStack(spacing: 0) {
            ForEach(1...maxNumberOfTerms, id: \.self) { numberOfTerms in
                let continuedRatio = ContinuedRatio<Double>(ratio, numberOfTerms: numberOfTerms)
                let segments = canvasWidth.segmented(by: continuedRatio)
                row(segments, color)
            }
            Text(ratio.description).font(.caption)
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
            .stroke(lineWidth: 2)
            .frame(height: 20)
    }

}

let liveView = Canvas().padding()
PlaygroundPage.current.setLiveView(liveView)
