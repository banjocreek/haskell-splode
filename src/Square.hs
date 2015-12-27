module Square (
    cell
) where

import Position

newtype SquareCell a = SquareCell (a,a) deriving Eq

cell :: a -> a -> SquareCell a
cell x y = SquareCell (x,y)

instance Show a => Show (SquareCell a) where
  show (SquareCell c) = show c

instance Enum i => Position (SquareCell i) where
  neighbors c = [left, up, right, down] <*> [c]
    where
      left (SquareCell (x, y)) = cell (pred x) y
      right (SquareCell (x, y)) = cell (succ x) y
      up (SquareCell (x, y)) = cell x (pred y)
      down (SquareCell (x, y)) = cell x (succ y)
