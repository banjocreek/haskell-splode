module Square (
    cell
  , Cell
) where

import Position

newtype Cell a = Cell (a,a) deriving Eq

cell :: a -> a -> Cell a
cell x y = Cell (x,y)

instance Show a => Show (Cell a) where
  show (Cell c) = show c

instance Enum i => Position (Cell i) where
  neighbors c = [left, up, right, down] <*> [c]
    where
      left (Cell (x, y)) = cell (pred x) y
      right (Cell (x, y)) = cell (succ x) y
      up (Cell (x, y)) = cell x (pred y)
      down (Cell (x, y)) = cell x (succ y)
