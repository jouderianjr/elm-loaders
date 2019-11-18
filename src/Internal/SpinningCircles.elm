module Internal.SpinningCircles exposing (view)

import Html exposing (Html)
import Svg exposing (..)
import Svg.Attributes exposing (..)


view : Float -> String -> Html msg
view widthVal color =
    svg
        [ width <| String.fromFloat widthVal
        , viewBox "0 0 58 58"
        ]
        [ g
            [ fill "none"
            , fillRule "evenodd"
            ]
            [ g
                [ transform "translate(2 1)"
                , stroke color
                , strokeWidth "1.5"
                ]
                [ circle
                    [ cx "42.601"
                    , cy "11.462"
                    , r "5"
                    , fillOpacity "1"
                    , fill color
                    ]
                    [ animate
                        [ attributeName "fill-opacity"
                        , begin "0s"
                        , dur "1.3s"
                        , values "1;0;0;0;0;0;0;0"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    ]
                , circle
                    [ cx "49.063"
                    , cy "27.063"
                    , r "5"
                    , fillOpacity "0"
                    , fill color
                    ]
                    [ animate
                        [ attributeName "fill-opacity"
                        , begin "0s"
                        , dur "1.3s"
                        , values "0;1;0;0;0;0;0;0"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    ]
                , circle
                    [ cx "42.601"
                    , cy "42.663"
                    , r "5"
                    , fillOpacity "0"
                    , fill color
                    ]
                    [ animate
                        [ attributeName "fill-opacity"
                        , begin "0s"
                        , dur "1.3s"
                        , values "0;0;1;0;0;0;0;0"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    ]
                , circle
                    [ cx "27"
                    , cy "49.125"
                    , r "5"
                    , fillOpacity "0"
                    , fill color
                    ]
                    [ animate
                        [ attributeName "fill-opacity"
                        , begin "0s"
                        , dur "1.3s"
                        , values "0;0;0;1;0;0;0;0"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    ]
                , circle
                    [ cx "11.399"
                    , cy "42.663"
                    , r "5"
                    , fillOpacity "0"
                    , fill color
                    ]
                    [ animate
                        [ attributeName "fill-opacity"
                        , begin "0s"
                        , dur "1.3s"
                        , values "0;0;0;0;1;0;0;0"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    ]
                , circle
                    [ cx "4.938"
                    , cy "27.063"
                    , r "5"
                    , fillOpacity "0"
                    , fill color
                    ]
                    [ animate
                        [ attributeName "fill-opacity"
                        , begin "0s"
                        , dur "1.3s"
                        , values "0;0;0;0;0;1;0;0"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    ]
                , circle
                    [ cx "11.399"
                    , cy "11.462"
                    , r "5"
                    , fillOpacity "0"
                    , fill color
                    ]
                    [ animate
                        [ attributeName "fill-opacity"
                        , begin "0s"
                        , dur "1.3s"
                        , values "0;0;0;0;0;0;1;0"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    ]
                , circle
                    [ cx "27"
                    , cy "5"
                    , r "5"
                    , fillOpacity "0"
                    , fill color
                    ]
                    [ animate
                        [ attributeName "fill-opacity"
                        , begin "0s"
                        , dur "1.3s"
                        , values "0;0;0;0;0;0;0;1"
                        , calcMode "linear"
                        , repeatCount "indefinite"
                        ]
                        []
                    ]
                ]
            ]
        ]
