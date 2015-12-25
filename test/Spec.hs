import Test.QuickCheck
import Lib

main :: IO ()
main = do
  putStrLn ""
  quickCheck itComputesTheLength
  putStrLn ""



itComputesTheLength :: [Char] -> Bool
itComputesTheLength as = length as == it as
