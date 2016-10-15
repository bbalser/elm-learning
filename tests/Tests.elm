module Tests exposing (..)

import Test exposing (..)
import Expect
import String
import FizzBuzzTests
import BabysitterTests


all : Test
all =
    describe "A Test Suite"
        [ FizzBuzzTests.fizzbuzz
        , BabysitterTests.babysitter
        ]
