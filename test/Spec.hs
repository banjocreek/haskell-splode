import Test.QuickCheck
import Lib

main :: IO ()
main = do
  putStrLn ""
  quickCheck addToIncreasesCount
  putStrLn ""

addToIncreasesCount :: (Int,Int) -> Bool
addToIncreasesCount v@(c,o) = addTo v == (c+1,o)
