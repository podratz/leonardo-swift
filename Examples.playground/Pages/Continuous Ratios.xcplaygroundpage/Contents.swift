import Leonardo
import SwiftUI
import PlaygroundSupport


struct Canvas: View {

    let width: Double = 300
    
    var body: some View {
        
        // Golden ratio
        ForEach(1...5, id: \.self) { numberOfTerms in
            let ratio = ContinuedRatio<Double>(.gold, numberOfTerms: numberOfTerms)
            let segments = width.segmented(by: ratio)
            return row(segments, color: .yellow)
        }

        // Silver ratio
        ForEach(1...5, id: \.self) { numberOfTerms in
            let ratio = ContinuedRatio<Double>(.silver, numberOfTerms: numberOfTerms)
            let segments = width.segmented(by: ratio)
            return row(segments, color: .gray)
        }

        // Bronce ratio
        ForEach(1...5, id: \.self) { numberOfTerms in
            let ratio = ContinuedRatio<Double>(.bronce, numberOfTerms: numberOfTerms)
            let segments = width.segmented(by: ratio)
            return row(segments, color: .orange)
        }

        // Plastic ratio
        ForEach(1...5, id: \.self) { numberOfTerms in
            let ratio = ContinuedRatio<Double>(.plastic, numberOfTerms: numberOfTerms)
            let segments = width.segmented(by: ratio)
            return row(segments, color: .green)
        }
    }
    
    func row(_ segments: [Double], color: Color) -> some View {
        HStack(spacing: 0) {
            ForEach(segments, id: \.self) { segmentWidth in
                Rectangle()
                    .stroke(lineWidth: 2)
                    .fill(color)
                    .frame(width: segmentWidth, height: 50)
            }
        }

    }

}

let liveView = Canvas().padding()
PlaygroundPage.current.setLiveView(liveView)
