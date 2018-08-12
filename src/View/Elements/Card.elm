module View.Elements.Card
    exposing
        ( body
        , header
        , view
        )

import Css exposing (..)
import Html.Styled as Html
    exposing
        ( Attribute
        , Html
        , h1
        , section
        )
import Html.Styled.Attributes exposing (css)
import Style
import Style.Colors as Colors
import View.Elements.Grid as Grid
import View.Elements.Words as Words


view : List Style -> List (Html msg) -> Html msg
view styles children =
    section
        [ css
            [ Style.outdent
            , boxSizing borderBox
            , backgroundColor Colors.ignorable2
            , padding (px Style.spacingSmall)
            , Style.animation "card" Style.Fast
            , Css.batch styles
            ]
        ]
        [ Grid.container
            []
            children
        ]


header : String -> Html msg
header message =
    Grid.row
        [ backgroundColor Colors.point0
        , padding (px Style.spacingRegular)
        ]
        [ Grid.column
            []
            [ Words.view
                [ color Colors.ignorable3 ]
                message
            ]
        ]


body : List (Html msg) -> Html msg
body children =
    Grid.row
        [ padding (px Style.spacingSmall) ]
        [ Grid.column
            []
            children
        ]
