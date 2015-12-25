module Lib
    ( it
    ) where

it :: Num n => [a] -> n
it [] = 0
it (a:as) = 1 + it as
