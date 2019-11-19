### Elm Loaders

This Package is the Sam Herbert [svg loaders](https://github.com/SamHerbert/SVG-Loaders)  implementation for elm


The Loaders can be previewed at:

http://samherbert.net/svg-loaders


I've implemented all the loaders available:

- Audio
- Ball Triangle
- Bars
- Circles
- Grid
- Hearts
- Oval
- Puff
- Rings
- SpinningCircles
- TailSpin
- ThreeDots


## Installation

`elm install jouderianjr/elm-loaders`

## Examples

```elm
import Loaders

view : Html msg
view =
    div [] [ Loaders.TailSpin 40 "#ff0000" ]

```

PS. The number that is passed as parameter is always the width, then the height adjusts in the correct ratio.
