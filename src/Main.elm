module Main exposing (main)

import Css
import Html
import Html.Styled as H exposing (Html)
import View.Elements.Card as Card
import View.Elements.Grid as Grid
import View.Elements.Words as Words


headerMsg : String
headerMsg =
    "Thank you"


greeting : String
greeting =
    "Dear Friend"


message : String
message =
    """
    Message!
    Message!
    Message!
    Message!
    Message!
    Message!

    
    """



-- MAIN TEXT --


mainText : List ( List Css.Style, String )
mainText =
    [ List.map (Tuple.pair []) [ greeting, message ]
    , [ ( [ Css.marginBottom Css.zero ], "Best" )
      , ( [ Css.marginBottom Css.zero ], "Chad" )
      ]
    ]
        |> List.concat



-- MAIN --


main : Html.Html msg
main =
    Card.view
        [ Css.maxWidth (Css.px 600)
        , Css.minWidth (Css.px 200)
        , Css.minHeight (Css.px 200)
        ]
        [ Card.header headerMsg
        , Card.body
            [ Words.viewInParagraphs mainText ]
        ]
        |> container
        |> H.toUnstyled


container : Html msg -> Html msg
container mainContent =
    Grid.container
        [ Css.displayFlex
        , Css.justifyContent Css.center
        , Css.height (Css.vh 100)
        ]
        [ Grid.row
            [ Css.alignItems Css.center
            , Css.zIndex <| Css.int 1
            ]
            [ Grid.column
                [ Css.flex Css.none ]
                [ mainContent ]
            ]
        ]
