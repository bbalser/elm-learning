module Tests exposing (..)

import Test exposing (..)
import Expect exposing (equal)
import String
import FizzBuzz

fizzbuzz : Test
fizzbuzz =
  describe "Fizzbuzz"
    [ test "returns ['1'] when given [1]" <|
      \() ->
        equal ["1"] (FizzBuzz.play [1])

    , test "returns ['2'] when given [2]" <|
      \() ->
        equal ["2"] (FizzBuzz.play [2])

    , test "returns fizz for all multiples of 3" <|
      \() ->
        equal ["fizz","fizz","fizz"] (FizzBuzz.play [3,6,9])

    , test "returns buzz for all multiples of 5" <|
      \() ->
        equal ["buzz", "buzz", "buzz"] (FizzBuzz.play [5, 10, 20])

    , test "returns fizzbuzz for all multiples of both 5 and 3" <|
      \() ->
        equal ["fizzbuzz", "fizzbuzz", "fizzbuzz"] (FizzBuzz.play [15, 30, 45])

    ]
