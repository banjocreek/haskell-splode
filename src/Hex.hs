module Hex (
    cell
) where

import Position

newtype Cell a = Cell (a,a) deriving Eq

cell :: a -> a -> Cell a
cell x y = Cell (x,y)

instance Show a => Show (Cell a) where
  show (Cell c) = show c

instance Enum i => Position (Cell i) where
  neighbors c = [left, uleft, uright, right, lright, lleft] <*> [c]
    where
      left (Cell (x, y)) = cell (pred x) (pred y)
      uleft (Cell (x, y)) = cell x (pred y)
      uright (Cell (x, y)) = cell (succ x) y
      right (Cell (x, y)) = cell (succ x) (succ y)
      lright (Cell (x, y)) = cell x (succ y)
      lleft (Cell (x, y)) = cell (pred x) y
