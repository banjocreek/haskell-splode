import Test.QuickCheck
import Lib

main :: IO ()
main = do
  putStrLn ""
  quickCheck placeIncrementsCount
  putStrLn ""

placeIncrementsCount :: Int -> Bool
placeIncrementsCount n = place (Cell n [1,2,3]) == Cell (n+1) [1,2,3]
