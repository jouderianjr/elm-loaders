module Internal.Oval exposing (view)

import Html exposing (Html)
import Svg exposing (..)
import Svg.Attributes exposing (..)


view : Float -> String -> Html msg
view widthVal color =
    svg
        [ width <| String.fromFloat widthVal
        , viewBox "0 0 38 38"
        , stroke color
        ]
        [ g
            [ fill "none"
            , fillRule "evenodd"
            ]
            [ g [ transform "translate(1 1)", strokeWidth "2" ]
                [ circle
                    [ strokeOpacity "0.5"
                    , cx "18"
                    , cy "18"
                    , r "18"
                    ]
                    []
                , Svg.path [ d "M36 18c0-9.94-8.06-18-18-18" ]
                    [ animateTransform
                        [ attributeName "transform"
                        , type_ "rotate"
                        , from "0 18 18"
                        , to "360 18 18"
                        , dur "1s"
                        , repeatCount "indefinite"
                        ]
                        []
                    ]
                ]
            ]
        ]
