module Square (
  unbounded,
  bounded
) where

import Topology

newtype Region a = Squares {nfilt :: (a,a) -> Bool}

unbounded :: Enum a => Region a
unbounded = Squares $ const True

bounded :: (Eq a,Enum a) => ((a,a) -> Bool) -> Region a
bounded = Squares

instance Enum a => Region a 

instance Enum i => Position (Cell i) where
  neighbors c = [left, up, right, down] <*> [c]
    where
      left (Cell (x, y)) = cell (pred x) y
      right (Cell (x, y)) = cell (succ x) y
      up (Cell (x, y)) = cell x (pred y)
      down (Cell (x, y)) = cell x (succ y)
