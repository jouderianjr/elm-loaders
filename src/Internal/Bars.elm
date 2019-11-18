module Internal.Bars exposing (view)

import Html exposing (Html)
import Svg exposing (..)
import Svg.Attributes exposing (..)


view : Float -> String -> Html msg
view widthVal color =
    svg
        [ width <| String.fromFloat widthVal
        , viewBox "0 0 135 140"
        , fill color
        ]
        [ rect
            [ y "10"
            , width "15"
            , height "120"
            , rx "6"
            ]
            [ animate
                [ attributeName "height"
                , begin "0.5s"
                , dur "1s"
                , values "120;110;100;90;80;70;60;50;40;140;120"
                , calcMode "linear"
                , repeatCount "indefinite"
                ]
                []
            , animate
                [ attributeName "y"
                , begin "0.5s"
                , dur "1s"
                , values "10;15;20;25;30;35;40;45;50;0;10"
                , calcMode "linear"
                , repeatCount "indefinite"
                ]
                []
            ]
        , rect
            [ x "30"
            , y "10"
            , width "15"
            , height "120"
            , rx "6"
            ]
            [ animate
                [ attributeName "height"
                , begin "0.25s"
                , dur "1s"
                , values "120;110;100;90;80;70;60;50;40;140;120"
                , calcMode "linear"
                , repeatCount "indefinite"
                ]
                []
            , animate
                [ attributeName "y"
                , begin "0.25s"
                , dur "1s"
                , values "10;15;20;25;30;35;40;45;50;0;10"
                , calcMode "linear"
                , repeatCount "indefinite"
                ]
                []
            ]
        , rect
            [ x "60"
            , width "15"
            , height "140"
            , rx "6"
            ]
            [ animate
                [ attributeName "height"
                , begin "0.0s"
                , dur "1s"
                , values "120;110;100;90;80;70;60;50;40;140;120"
                , calcMode "linear"
                , repeatCount "indefinite"
                ]
                []
            , animate
                [ attributeName "y"
                , begin "0.0s"
                , dur "1s"
                , values "10;15;20;25;30;35;40;45;50;0;10"
                , calcMode "linear"
                , repeatCount "indefinite"
                ]
                []
            ]
        , rect
            [ x "90"
            , y "10"
            , width "15"
            , height "120"
            , rx "6"
            ]
            [ animate
                [ attributeName "height"
                , begin "0.25s"
                , dur "1s"
                , values "120;110;100;90;80;70;60;50;40;140;120"
                , calcMode "linear"
                , repeatCount "indefinite"
                ]
                []
            , animate
                [ attributeName "y"
                , begin "0.25s"
                , dur "1s"
                , values "10;15;20;25;30;35;40;45;50;0;10"
                , calcMode "linear"
                , repeatCount "indefinite"
                ]
                []
            ]
        , rect
            [ x "120"
            , y "10"
            , width "15"
            , height "120"
            , rx "6"
            ]
            [ animate
                [ attributeName "height"
                , begin "0.5s"
                , dur "1s"
                , values "120;110;100;90;80;70;60;50;40;140;120"
                , calcMode "linear"
                , repeatCount "indefinite"
                ]
                []
            , animate
                [ attributeName "y"
                , begin "0.5s"
                , dur "1s"
                , values "10;15;20;25;30;35;40;45;50;0;10"
                , calcMode "linear"
                , repeatCount "indefinite"
                ]
                []
            ]
        ]
