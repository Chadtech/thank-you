module Main exposing (..)

import Html
import Model exposing (Model)
import Msg exposing (Msg(..))
import Tuple.Infix exposing ((&))
import View exposing (view)


-- MAIN --


main : Program Never Model Msg
main =
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }
        |> Html.program


init : ( Model, Cmd Msg )
init =
    {} & Cmd.none



-- SUBSCRIPTIONS --


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- UPDATE --


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Tick time ->
            model & Cmd.none
