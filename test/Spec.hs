import Test.Hspec
import Test.QuickCheck
import Position
import qualified Square
import qualified Hex

main :: IO ()
main = hspec $ do
  describe "square cell" $ do
    let c = Square.cell 1 1
        ns = neighbors c
    it "has four neighbors" $ do
      length ns `shouldBe` 4
    it "has a neighbor to the left" $ do
      ns `shouldHaveOne` Square.cell 0 1
    it "has a neighbor above" $ do
      ns `shouldHaveOne` Square.cell 1 2
    it "has a neighbor to the right" $ do
      ns `shouldHaveOne` Square.cell 2 1
    it "has a neighbor below" $ do
      ns `shouldHaveOne` Square.cell 1 0
  describe "hex cell" $ do
    let c = Hex.cell 1 1
        ns = neighbors c
    it "has six neighbors" $ do
      length ns `shouldBe` 6
    it "has a neighbor to the left" $ do
      ns `shouldHaveOne` Hex.cell 0 0
    it "has a neighbor to the upper left" $ do
      ns `shouldHaveOne` Hex.cell 1 0
    it "has a neighbor to the upper right" $ do
      ns `shouldHaveOne` Hex.cell 2 1
    it "has a neighbor to the right" $ do
      ns `shouldHaveOne` Hex.cell 2 2
    it "has a neighbor to the lower right" $ do
      ns `shouldHaveOne` Hex.cell 1 2
    it "has a neighbor to the lower left" $ do
      ns `shouldHaveOne` Hex.cell 0 1

shouldHaveOne ys x = filter (== x) ys == [x]
