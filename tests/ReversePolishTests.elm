module ReversePolishTests exposing (..)

import Test exposing (..)
import Expect exposing (equal)
import ReversePolish exposing(eval)

all =
  describe "Reverse Polish"
    [ test "can add 2 numbers together" <|
        \() ->
          equal 2 (eval "1 1 +")

    , test "can add different numbers together" <|
        \() ->
          equal 3 (eval "1 2 +")

    , test "can add more numbers" <|
        \() ->
          equal 10 (eval "3 3 + 4 +")

    , test "can subtract 2 numbers" <|
        \() ->
          equal 2 (eval "6 4 -")

    , test "can multiply 2 numbers" <|
        \() ->
          equal 12 (eval "3 4 *")

    , test "can divide 2 numbers" <|
        \() ->
          equal 4 (eval "8 2 /")

    , test "fun equation" <|
        \() ->
          equal 6 (eval "8 2 / 5 + 3 -")
    ]
