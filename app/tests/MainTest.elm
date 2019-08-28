module MainTest exposing (suite)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Html as H
import Main exposing (..)
import Test exposing (..)
import Test.Html.Query as Query


suite : Test
suite =
    describe "Main"
        [ test "main is div that contains text 'Hello, world!'" <|
            \_ ->
                main
                    |> Query.fromHtml
                    |> Query.contains [ H.div [] [ H.text "Hello, world!" ] ]
        ]
