module Model exposing (Model, model)

import Reimbursement.Model
import Internationalization exposing (Language(..), TranslationId(..), translate)
import Layout
import Material


type alias Model =
    { reimbursements : Reimbursement.Model.Model
    , layout : Layout.Model
    , googleStreetViewApiKey : Maybe String
    , lang : Language
    , mdl : Material.Model
    }


model : Model
model =
    Model Reimbursement.Model.model Layout.model Nothing English Material.model
