module Internal.BallTriangle exposing (view)

import Html exposing (Html)
import Svg exposing (..)
import Svg.Attributes exposing (..)


view : Float -> String -> Html msg
view widthVal color =
    svg
        [ width <| String.fromFloat widthVal
        , viewBox "0 0 57 57"
        , stroke color
        ]
        [ g
            [ fill "none"
            , fillRule "evenodd"
            ]
            [ g
                [ transform "translate(1 1)"
                , strokeWidth "2"
                ]
                [ circle
                    [ cx "5"
                    , cy "50"
                    , r "5"
                    ]
                    [ animate
                        [ attributeName "cy"
                        , begin "0s"
                        , dur "2.2s"
                        , values "50;5;50;50"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    , animate
                        [ attributeName "cx"
                        , begin "0s"
                        , dur "2.2s"
                        , values "5;27;49;5"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    ]
                , circle
                    [ cx "27"
                    , cy "5"
                    , r "5"
                    ]
                    [ animate
                        [ attributeName "cy"
                        , begin "0s"
                        , from "5"
                        , to "5"
                        , dur "2.2s"
                        , values "5;50;50;5"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    , animate
                        [ attributeName "cx"
                        , begin "0s"
                        , from "27"
                        , to "27"
                        , dur "2.2s"
                        , values "27;49;5;27"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    ]
                , circle
                    [ cx "49"
                    , cy "50"
                    , r "5"
                    ]
                    [ animate
                        [ attributeName "cy"
                        , begin "0s"
                        , dur "2.2s"
                        , values "50;50;5;50"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    , animate
                        [ attributeName "cx"
                        , begin "0s"
                        , from "49"
                        , to "49"
                        , dur "2.2s"
                        , values "49;5;27;49"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    ]
                ]
            ]
        ]
