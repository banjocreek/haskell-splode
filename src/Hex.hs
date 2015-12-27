module Hex (
    cell
) where

import Position

newtype SquareCell a = SquareCell (a,a) deriving Eq

cell :: a -> a -> SquareCell a
cell x y = SquareCell (x,y)

instance Show a => Show (SquareCell a) where
  show (SquareCell c) = show c

instance Enum i => Position (SquareCell i) where
  neighbors c = [left, uleft, uright, right, lright, lleft] <*> [c]
    where
      left (SquareCell (x, y)) = cell (pred x) (pred y)
      uleft (SquareCell (x, y)) = cell x (pred y)
      uright (SquareCell (x, y)) = cell (succ x) y
      right (SquareCell (x, y)) = cell (succ x) (succ y)
      lright (SquareCell (x, y)) = cell x (succ y)
      lleft (SquareCell (x, y)) = cell (pred x) y
