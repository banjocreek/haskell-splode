module Position (
  Position(..)
) where

class Position a where
  neighbors :: a -> [a]
