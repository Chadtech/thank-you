module View.Elements.Card exposing
    ( body
    , header
    , view
    )

import Css
import Html.Styled as H
    exposing
        ( Attribute
        , Html
        )
import Html.Styled.Attributes as A
import Style
import Style.Colors as Colors
import View.Elements.Grid as Grid
import View.Elements.Words as Words


view : List Css.Style -> List (Html msg) -> Html msg
view styles children =
    H.section
        [ A.css
            [ Style.outdent
            , Css.boxSizing Css.borderBox
            , Css.backgroundColor Colors.ignorable2
            , Css.padding (Css.px Style.spacingSmall)
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
        [ Css.backgroundColor Colors.point0
        , Css.padding (Css.px Style.spacingBig)
        , Css.margin (Css.px Style.spacingSmall)
        , Style.lineHeight
        ]
        [ Grid.column
            []
            [ Words.view
                [ Css.color Colors.ignorable3 ]
                message
            ]
        ]


body : List (Html msg) -> Html msg
body children =
    Grid.row
        [ Css.padding (Css.px Style.spacingSmall) ]
        [ Grid.column
            []
            children
        ]
