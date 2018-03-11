module View exposing (view)

import Html exposing (Html, p)
import Html.Custom
import Model exposing (Model)
import Msg exposing (Msg(..))


-- VIEW --


view : Model -> Html Msg
view model =
    [ Html.Custom.header
        { text = "thank you"
        , closability = Html.Custom.NotClosable
        }
    , Html.Custom.cardBody []
        [ p
            []
            [ Html.text thanks ]
        ]
    ]
        |> Html.Custom.cardSolitary []
        |> List.singleton
        |> Html.Custom.main_ []


thanks : String
thanks =
    """
    Thanks a whole lot for that thing.
    """
