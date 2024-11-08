import Leonardo

for ratio in Ratio.gold.tail.prefix(5) {
    ratio.quotient
}

let colors = Ratio.gold.lazy.map(\.angle.color).prefix(1).first().

print(colors)
