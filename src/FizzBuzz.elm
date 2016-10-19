module FizzBuzz exposing (play)

play : List Int -> List String
play list =
  List.map convert list


convert : Int -> String
convert int =
  case (rem int 15, rem int 5, rem int 3) of
    (0, _, _) -> "fizzbuzz"
    (_, 0, _) -> "buzz"
    (_, _, 0) -> "fizz"
    _ -> toString int
