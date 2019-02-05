binario :: Int -> [Int]
binario 0 = [0]
binario 1 = [1]
binario a
  | a < 0 = []
  | otherwise = binario (a `div` 2) ++ [a `mod` 2]