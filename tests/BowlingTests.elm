module BowlingTests exposing (..)

import Test exposing (..)
import Expect exposing (equal)
import Bowling exposing (score)

bowling =
  describe "Bowling"
    [ test "A normal ball is scored as that value" <|
        \() ->
          equal 45 (score "123456789")

    , test "A X represents 10" <|
        \() ->
          equal 10 (score "X")

    , test "A strike counts the next 2 rolls are part of its frame" <|
        \() ->
          equal 16 (score "X12")

    , test "A gutter ball is reprensted by a -" <|
        \() ->
          equal 0 (score "--")

    , test "a spare counts the next roll in its frame" <|
        \() ->
          equal 25 (score "4/71")

    , test "a spare can be added to a strike" <|
        \() ->
          equal 34 (score "X7/12")

    , test "thee strikes in a row will be 60" <|
        \() ->
          equal 60 (score "XXX")

    , test "all strikes equals 300" <|
        \() ->
          equal 300 (score "XXXXXXXXXXXX")

    ]
