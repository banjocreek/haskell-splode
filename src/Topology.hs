module Topology (
  Topology(..)
) where

class Topology r a where
  neighbors :: r -> a -> [a]
