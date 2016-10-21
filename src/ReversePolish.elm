module ReversePolish exposing (eval)

import String

eval : String -> Int
eval input =
  input
    |> String.words
    |> process []

process : List Int -> List String -> Int
process stack input =
  case input of
    [] -> List.head stack |> Maybe.withDefault 0
    head::tail ->
      case (toInt head) of
        Ok x -> process (x::stack) tail
        Err _ -> process ((performOperation head stack)::(List.drop 2 stack)) tail


performOperation : String -> List Int -> Int
performOperation operator stack =
  let
    operands = List.take 2 stack
  in
    case operator of
      "+" -> List.sum operands
      "-" -> List.foldl (-) 0 operands
      "*" -> List.product operands
      "/" ->
        let
          operator1 = getAt 0 operands
          operator2 = getAt 1 operands
        in
          operator2 / operator1 |> round
      _ -> 0


toInt : String -> Result String Int
toInt string =
  String.toInt string


getAt : Int -> List number -> number
getAt idx list =
  (List.head <| List.drop idx list) |> Maybe.withDefault 0
