module BabysitterTests exposing (..)

import Test exposing (..)
import Expect exposing (equal)
import String
import Babysitter exposing (calc)

babysitter : Test
babysitter =
  describe "Babysitter"
    [ test "gets paid $10 for 1 hour before bedtime" <|
        \() ->
          equal 10 (calc 5 6 8)

    , test "gets paid $5 for 1 hour after bedtime before midnight" <|
        \() ->
          equal 5 (calc 8 9 8)

    , test "gets paid $15 for 1 hour after midnight" <|
        \() ->
          equal 15 (calc 1 2 8)

    , test "gets paid $20 for 2 hours before bedtime" <|
        \() ->
          equal 20 (calc 5 7 8)

    , test "gets paid $10 for 2 hours after bedtime" <|
        \() ->
          equal 10 (calc 8 10 8)

    , test "gets paid $30 for 2 hours after midnight" <|
        \() ->
          equal 30 (calc 1 3 8)

    , test "gets paid $15 when arriving at midnight and leaving at 1" <|
        \() ->
          equal 15 (calc 12 1 8)

    , test "gets paid $30 when arriving at 6 and leaving at 10 with a bedtime of 8" <|
        \() ->
          equal 30 (calc 6 10 8)
    ]
