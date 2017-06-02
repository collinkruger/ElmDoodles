module CK.Bootstrap.Buttons exposing (save, saveAndCancel)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type Msg
    = BtnSaveClick
    | BtnCancelClick


buildAttributes : String -> Maybe String -> Bool -> Msg -> List (Attribute Msg)
buildAttributes btnClass btnStyle btnEnabled btnOnClickMessage =
    let
        a =
            [ class btnClass
            , disabled (not btnEnabled)
            ]

        b =
            case btnStyle of
                Just str ->
                    (attribute "style" str) :: a

                Nothing ->
                    a

        c =
            case btnEnabled of
                True ->
                    (onClick btnOnClickMessage) :: b

                False ->
                    b
    in
        c


btn : String -> String -> Maybe String -> Bool -> Msg -> Html Msg
btn btnText btnClass btnStyle btnEnabled btnOnClickMessage =
    button
        (buildAttributes btnClass btnStyle btnEnabled btnOnClickMessage)
        [ text btnText ]


save btnText btnEnabled =
    button
        [ class "btn btn-primary btn-block"
        , disabled (not btnEnabled)
        ]
        [ text btnText ]


saveAndCancel btnSaveText btnSaveEnabled btnCancelText btnCancelEnabled =
    [ button
        [ class "btn btn-primary"
        , attribute "style" "width:50%;"
        , disabled (not btnSaveEnabled)
        ]
        [ text btnSaveText
        ]
    , button
        [ class "btn btn-danger"
        , attribute "style" "width:50%;"
        , disabled (not btnCancelEnabled)
        ]
        [ text btnCancelText
        ]
    ]
