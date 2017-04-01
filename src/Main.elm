module Main exposing (..)

import Html exposing (Html, div, text, program)

-- Model
type alias Model = 
    String

-- Message
type Msg = 
        NoOp

init : ( Model, Cmd Msg )
init =
    ( "Hello", Cmd.none )

-- View

view : Model -> Html Msg
view model =
    div []
        [ text model ]

-- Update

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

-- Sub

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


-- MAIN

main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }