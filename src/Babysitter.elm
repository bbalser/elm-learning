module Babysitter exposing (calc)


calc : Int -> Int -> Int -> Int
calc arrival departure bedtime =
  let
    start = mapTime arrival
    end = mapTime departure
  in
    [start..(end-1)]
      |> List.map (rate bedtime)
      |> List.sum


mapTime : Int -> Int
mapTime time =
  if time < 5 then
    time + 12
  else
    time


rate : Int -> Int -> Int
rate bedtime hour =
  if hour >= 12 then
    15
  else if hour < bedtime then
    10
  else
    5
