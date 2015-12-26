module Lib
    ( place
    , Cell (Cell)
    , cyclic
    , square
    ) where


data Cell = Cell Int [Cell] deriving (Show, Eq)

place :: Cell -> Cell
place (Cell x cs) = Cell (x+1) cs


square :: [Cell]
square = [ab, ab, ba, bb]
  where aa = Cell 0 [ab, ba]
        ab = Cell 0 [aa, bb]
        ba = Cell 0 [aa, bb]
        bb = Cell 0 [ab, ba]


cyclic :: [Int]
cyclic = let x = 0 : y
             y = 1 : x
         in x
