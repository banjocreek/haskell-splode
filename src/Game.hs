module Game (
    new
  , place
  , occupied
  , Frame
  ) where

import Position

import qualified Data.Map as M


data Occupation = O { count :: Int } deriving (Eq,Show)
data Frame a = F { occupations :: M.Map a Occupation }

new :: (Position p, Eq p) => Frame p
new = F M.empty

place :: (Position p, Eq p) => Frame p -> p -> Frame p
place = error "NYI"

occupied :: Frame a -> [(a , Occupation)]
occupied = M.assocs . occupations
