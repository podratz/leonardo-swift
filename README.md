# Leonardo

Leonardo is a Swift Library that makes working with geometric ratios, such as the golden ratio, easy and intuitive. This can be useful in UI and numerics computation.

## Intention behind this project

This library is inspired by another library I wrote a while back called [leonardo-python](https://github.com/podratz/leonardo-python), which provides similiar functionality with syntactic sugar for the python language.

## How to get started

To use the library, clone the project into your workspace. It is not yet available as its API cannot be considered stable. Once sufficiently stable, I will consider to package it for use with the Swift Package Manager from Apple, and possibly other package managers.

## Generate parameters for your UI

There are various ways to use Leonardo to generate aesthetic parameters for your UI. For example, with the `ContinuedRatio` type and its `segment()` number extension, you can split a quantity into segments such that subsequent segments relate to another following a particular ratio (such as the golden ratio).

```swift
import Leonardo

let ratio = ContinuedRatio<Double>(.gold, numberOfTerms: 3)
let segments = 100.segmented(by: ratio)
// segments == [50.0, 30.901699437494745, 19.09830056250526]
```

![UI parameterized with metallic ratios.](./.github/Images/ContinuedRatio.png 'UI parameterized with metallic ratios.')

You find this example on the playground page `Continued Ratios`.

## Define your own ratios

Defining your own ratios is easy!

```swift
let doubling: Ratio = 2
```

## Create handy shortcuts

The following definitions are useful in contexts that benefit from terse syntax, like graphics programming:

```swift
let g = Ratio.gold
let s = Ratio.silver
let b = Ratio.bronze

g[2].quotient // 2.618033988749895
```

## Interactive Examples

To see some more elaborate and interactive examples, check out the playgrounds provided with this package under `/Examples.playground`.

## Contributions

Feel free to fork this repository and build some cool extensions. I'd appreciate to see them, just send a pull request to discuss if it is compatible with my project vision. Similarly, creating an issue when you feel something is missing or not working as expected, is appreciated so I can get back behind the keyboard and fix it for you.
