module Bowling exposing (score)

import String

score : String -> Int
score game =
  String.toList game
      |> createframes
      |> List.take 10
      |> List.map scoreframe
      |> List.sum


createframes : List Char -> List (List Char)
createframes rolls =
  case rolls of
    [] -> []
    'X'::_ -> (List.take 3 rolls) :: (createframes (List.drop 1 rolls))
    _::'/'::_ -> (List.take 3 rolls) :: (createframes (List.drop 2 rolls))
    _ -> (List.take 2 rolls) :: (createframes (List.drop 2 rolls))


scoreframe : List Char -> Int
scoreframe rolls =
  List.foldl scoreroll 0 rolls


scoreroll : Char -> Int -> Int
scoreroll roll sofar =
  case roll of
    'X' -> sofar + 10
    '/' ->
      let
        convertedSofar = sofar + 1 |> toFloat
      in
        ceiling (convertedSofar / 10) * 10
    x -> sofar + (toInt roll)


toInt : Char -> Int
toInt str =
  str
    |> String.fromChar
    |> String.toInt
    |> Result.withDefault 0
