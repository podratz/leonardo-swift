import Leonardo

// MARK: - Create a custom geometric ratio.

let doubling: Ratio = 2

for neighbor in 16.neighborhood(ratio: doubling, radius: 4) {
    neighbor
}

let ratio = ContinuedRatio<Double>(.gold[2], numberOfTerms: 3)
let segments = 100.segmented(by: ratio)

