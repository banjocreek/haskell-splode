module Lib
    ( place
    , Cell (Cell)
    , cyclic
    , square
    ) where


data Cell = Cell String Int [Cell]
instance Eq Cell where
  (Cell id1 _ _) == (Cell id2 _ _) = id1 == id2
instance Show Cell where
  show (Cell id _ _) = id


place :: Cell -> Cell
place (Cell id x cs) = Cell id (x+1) cs


square :: [Cell]
square = [ab, ab, ba, bb]
  where aa = Cell "aa" 0 [ab, ba]
        ab = Cell "ab" 0 [bb, aa]
        bb = Cell "bb" 0 [ba, ab]
        ba = Cell "ba" 0 [aa, bb]


cyclic :: [Int]
cyclic = let x = 0 : y
             y = 1 : x
         in x
