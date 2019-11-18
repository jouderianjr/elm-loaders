module Internal.Puff exposing (view)

import Html exposing (Html)
import Svg exposing (..)
import Svg.Attributes exposing (..)


view : Float -> String -> Html msg
view widthVal color =
    svg
        [ width <| String.fromFloat widthVal
        , viewBox "0 0 44 44"
        , stroke color
        ]
        [ g
            [ fill "none"
            , fillRule "evenodd"
            , strokeWidth "2"
            ]
            [ circle
                [ cx "22"
                , cy "22"
                , r "1"
                ]
                [ animate
                    [ attributeName "r"
                    , begin "0s"
                    , dur "1.8s"
                    , values "1; 20"
                    , calcMode "spline"
                    , keyTimes "0; 1"
                    , keySplines "0.165, 0.84, 0.44, 1"
                    , repeatCount "indefinite"
                    ]
                    []
                , animate
                    [ attributeName "stroke-opacity"
                    , begin "0s"
                    , dur "1.8s"
                    , values "1; 0"
                    , calcMode "spline"
                    , keyTimes "0; 1"
                    , keySplines "0.3, 0.61, 0.355, 1"
                    , repeatCount "indefinite"
                    ]
                    []
                ]
            , circle
                [ cx "22"
                , cy "22"
                , r "1"
                ]
                [ animate
                    [ attributeName "r"
                    , begin "-0.9s"
                    , dur "1.8s"
                    , values "1; 20"
                    , calcMode "spline"
                    , keyTimes "0; 1"
                    , keySplines "0.165, 0.84, 0.44, 1"
                    , repeatCount "indefinite"
                    ]
                    []
                , animate
                    [ attributeName "stroke-opacity"
                    , begin "-0.9s"
                    , dur "1.8s"
                    , values "1; 0"
                    , calcMode "spline"
                    , keyTimes "0; 1"
                    , keySplines "0.3, 0.61, 0.355, 1"
                    , repeatCount "indefinite"
                    ]
                    []
                ]
            ]
        ]
