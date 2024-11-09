import Leonardo


// MARK: Ratio-based sequences

let ratios = Ratio.gold.prefix(5)

let quotients = ratios.map(\.quotient)


// MARK: Angle-based sequences

let angles = Ratio.gold.angles.prefix(5)

let colors = angles.map(\.color)
let complex = angles.map(\.complex)


// MARK: Index-based acccess for ratios

let thirdQuotient = Ratio.gold[2].quotient
let firstFiveQuotients = Ratio.gold[0...4].map(\.quotient)

let thirdAngle = Ratio.gold[angle: 2].degrees
let firstFiveAngles = Ratio.gold[angles: 0...4].map(\.degrees)
