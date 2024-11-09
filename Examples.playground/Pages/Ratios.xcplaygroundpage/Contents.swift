import Leonardo

// MARK: - Create a custom geometric ratio.

let doubling: Ratio = 2

for neighbor in 16.neighborhood(ratio: doubling, radius: 4) {
    neighbor
}
