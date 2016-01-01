module Game (
    new
  , place
  , occupied
  , strength
  , Frame
  ) where

import Topology

import qualified Data.Map as M


data Occupation = O { strength :: Int } deriving (Eq,Show)
data Frame p = F { occupations :: M.Map p Occupation }

new :: (Ord p, Position p) => Frame p
new = F M.empty

place :: (Ord p, Position p) => Frame p -> p -> Frame p
place f p = F $ M.insert p (O 1) (occupations f)

occupied :: Frame a -> [(a , Occupation)]
occupied = M.assocs . occupations
