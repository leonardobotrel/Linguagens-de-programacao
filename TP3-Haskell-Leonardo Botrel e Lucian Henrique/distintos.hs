existe :: Int -> [Int] -> Bool
existe a [] = False
existe a (b:x) 
  | a == b = True
  | otherwise = existe a x

distintos :: [Int] -> Bool
distintos [_] = True
distintos (a:x)
  | existe a x == True = False 
  | otherwise = distintos x 