-- Module to easily add a Bootstrap reference
-- This is helpful when using reactor


module CK.Bootstrap.BootstrapRef exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


ref =
    node
        "link"
        [ rel "stylesheet"
        , href "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        , attribute "integrity" "sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        , attribute "crossorigin" "anonymous"
        ]
        []
