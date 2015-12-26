module Lib
    ( place
    , Cell (Cell)
    ) where


data Cell = Cell Int [Cell] deriving (Show, Eq)

place :: Cell -> Cell
place (Cell x cs) = Cell (x+1) cs
