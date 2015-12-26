import Test.QuickCheck
import Lib

main :: IO ()
main = do
  putStrLn ""
  quickCheck placeIncrementsCount
  print square
  putStrLn ""

placeIncrementsCount :: Int -> Bool
placeIncrementsCount n = place (Cell n [Cell 0 [], Cell 1 []]) == Cell (n+1) [Cell 0 [], Cell 1 []]
