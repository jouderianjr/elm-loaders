module Loaders exposing (audio, ballTriangle, bars, circles, grid, hearts, oval, puff, rings, spinningCircles, tailSpin, threeDots)

{-| This Package is the Sam Herbert [https://github.com/SamHerbert/SVG-Loaders](svg loaders) implementation for elm

The Loaders can be previewed at:

<http://samherbert.net/svg-loaders>


## Example

    import Loaders

    view : Html msg
    view =
        div [] [ Loaders.TailSpin 40 "#ff0000" ]

PS. all the loaders receives the width as float and the color as string


## Loaders

@docs audio, ballTriangle, bars, circles, grid, hearts, oval, puff, rings, spinningCircles, tailSpin, threeDots

-}

import Html exposing (Html)
import Internal.Audio as Audio
import Internal.BallTriangle as BallTriangle
import Internal.Bars as Bars
import Internal.Circles as Circles
import Internal.Grid as Grid
import Internal.Hearts as Hearts
import Internal.Oval as Oval
import Internal.Puff as Puff
import Internal.Rings as Rings
import Internal.SpinningCircles as SpinningCircles
import Internal.TailSpin as TailSpin
import Internal.ThreeDots as ThreeDots


{-| -}
audio : Float -> String -> Html msg
audio =
    Audio.view


{-| -}
bars : Float -> String -> Html msg
bars =
    Bars.view


{-| -}
oval : Float -> String -> Html msg
oval =
    Oval.view


{-| -}
ballTriangle : Float -> String -> Html msg
ballTriangle =
    BallTriangle.view


{-| -}
circles : Float -> String -> Html msg
circles =
    Circles.view


{-| -}
grid : Float -> String -> Html msg
grid =
    Grid.view


{-| -}
puff : Float -> String -> Html msg
puff =
    Puff.view


{-| -}
rings : Float -> String -> Html msg
rings =
    Rings.view


{-| -}
spinningCircles : Float -> String -> Html msg
spinningCircles =
    SpinningCircles.view


{-| -}
threeDots : Float -> String -> Html msg
threeDots =
    ThreeDots.view


{-| -}
tailSpin : Float -> String -> Html msg
tailSpin =
    TailSpin.view


{-| -}
hearts : Float -> String -> Html msg
hearts =
    Hearts.view
