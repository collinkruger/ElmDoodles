module CK.Bootstrap.SanityCheck.FormVertical exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import CK.Bootstrap.FormVertical exposing (..)
import CK.Bootstrap.BootstrapRef exposing (..)


type Msg
    = InputAChanged String
    | InputBChanged String
    | InputCChanged String


type alias Model =
    { anInputA : String
    , anInputB : String
    , anInputB : String
    }


update msg model =
    case msg of
        InputAChanged str ->
            { model | anInputA = str }

        InputBChanged str ->
            { model | anInputB = str }

        InputCChanged str ->
            { model | anInputC = str }


view model =
    div
        []
        [ ref
        , textboxLabeled "An-Html-Id-1" "An Input" True (InputAChanged) model.anInputA
        , textboxLabeled "An-Html-Id-2" "A Second Input" True (InputBChanged) model.anInputB
        , textboxLabeled "An-Html-Id-3" "A Third Input That Is Disabled" False (InputCChanged) model.anInputC
        , p [] [ text <| "From A: " ++ model.anInputA ]
        , p [] [ text <| "From B: " ++ model.anInputB ]
        , p [] [ text <| "From C: " ++ model.anInputC ]
        ]


main =
    Html.beginnerProgram
        { model = { anInputA = "", anInputB = "", anInputC = "" }
        , view = view
        , update = update
        }
