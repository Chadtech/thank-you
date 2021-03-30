module Style exposing
    ( Speed(..)
    , animation
    , cannotSelect
    , hfnss
    , indent
    , lineHeight
    , noFontSmoothing
    , noPaddingOrMargins
    , outdent
    , spacingBig
    , spacingRegular
    , spacingSmall
    , speedToString
    )

import Css exposing (..)
import Style.Colors as Colors


lineHeight : Css.Style
lineHeight =
    Css.lineHeight <| Css.px 21


indent : Style
indent =
    [ borderTop3 (px spacingSmall) solid Colors.ignorable3
    , borderLeft3 (px spacingSmall) solid Colors.ignorable3
    , borderRight3 (px spacingSmall) solid Colors.ignorable1
    , borderBottom3 (px spacingSmall) solid Colors.ignorable1
    ]
        |> Css.batch


outdent : Style
outdent =
    [ borderTop3 (px spacingSmall) solid Colors.ignorable1
    , borderLeft3 (px spacingSmall) solid Colors.ignorable1
    , borderRight3 (px spacingSmall) solid Colors.ignorable3
    , borderBottom3 (px spacingSmall) solid Colors.ignorable3
    ]
        |> Css.batch


cannotSelect : Style
cannotSelect =
    [ property "-webkit-user-select" "none"
    , property "-moz-user-select" "none"
    , property "-ms-user-select" "none"
    , property "user-select" "none"
    ]
        |> Css.batch


noPaddingOrMargins : Style
noPaddingOrMargins =
    [ margin zero
    , padding zero
    ]
        |> Css.batch


noFontSmoothing : Style
noFontSmoothing =
    property "-webkit-font-smoothing" "none"


hfnss : Style
hfnss =
    fontFamilies [ "hfnss" ]


animation : String -> Speed -> Style
animation name speed =
    name
        ++ " "
        ++ speedToString speed
        ++ " "
        ++ "linear"
        |> property "animation"



-- UNITS --


type Speed
    = Fast
    | Slow


speedToString : Speed -> String
speedToString speed =
    case speed of
        Fast ->
            "160ms"

        Slow ->
            "640ms"


spacingSmall : Float
spacingSmall =
    3


spacingRegular : Float
spacingRegular =
    5


spacingBig : Float
spacingBig =
    9
