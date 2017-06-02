module CK.Bootstrap.FormVertical exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


textboxLabeled id label enabled inputChangedMsgCtor value =
    div
        [ class "form-group" ]
        [ node
            "label"
            [ for id ]
            [ text label ]
        , input
            [ attribute "id" id
            , type_ "text"
            , class "form-control"
            , placeholder label
            , onInput inputChangedMsgCtor
            , attribute "value" value
            , disabled (not enabled)
            ]
            []
        ]
