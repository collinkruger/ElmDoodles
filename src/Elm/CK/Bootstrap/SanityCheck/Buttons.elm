module CK.Bootstrap.SanityCheck.Buttons exposing (..)

import Html exposing (..)
import CK.Bootstrap.BootstrapRef as BootstrapRef
import CK.Bootstrap.Buttons exposing (..)


main =
    div
        []
        ([ BootstrapRef.ref
         , save "Save" True
         , save "Saving" False
         ]
            ++ (saveAndCancel "Save" True "Cancel" True)
            ++ (saveAndCancel "Save" False "Cancel" True)
            ++ (saveAndCancel "Save" True "Cancel" False)
            ++ (saveAndCancel "Save" False "Cancel" False)
        )
