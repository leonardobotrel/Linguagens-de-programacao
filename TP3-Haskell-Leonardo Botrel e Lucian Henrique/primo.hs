primo :: Int -> Bool
primo a
  | a < 0 = fatores (a * (-1)) == [1]
  | otherwise = fatores a == [1]

fatores :: Int -> [Int]
fatores 0 = []
fatores n = [ i | i <- [1..n `div` 2], n `mod` i == 0 ]