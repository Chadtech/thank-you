module Main exposing (..)

import Css exposing (..)
import Html as H
import Html.Styled as Html exposing (Html, div)
import View.Elements.Card as Card
import View.Elements.Grid as Grid
import View.Elements.Words as Words


-- MAIN TEXT --


mainText : List ( List Style, String )
mainText =
    [ [ "Hey"
      , """
        Bottom Text
        """
      ]
        |> List.map ((,) [])
    , [ ( [ marginBottom zero ], "Best," )
      , ( [ marginBottom zero ], "-Chad" )
      ]
    ]
        |> List.concat



-- MAIN --


main : H.Html msg
main =
    Card.view
        [ maxWidth (px 600)
        , minWidth (px 200)
        , minHeight (px 200)
        ]
        [ Card.header "Thank you"
        , Card.body [ Words.viewInParagraphs mainText ]
        ]
        |> container
        |> Html.toUnstyled


container : Html msg -> Html msg
container mainContent =
    Grid.container
        [ displayFlex
        , justifyContent center
        , height (vh 100)
        ]
        [ Grid.row
            [ alignItems center ]
            [ Grid.column
                [ flex none ]
                [ mainContent ]
            ]
        ]
