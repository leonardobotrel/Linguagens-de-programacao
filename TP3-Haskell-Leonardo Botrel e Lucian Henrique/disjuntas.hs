disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] x = True
disjuntas x [] = True
disjuntas (a:x) y 
  | existe a y == True = False
  | otherwise = disjuntas x y

existe :: Int -> [Int] -> Bool
existe a [] = False
existe a (b:x) 
  | a == b = True
  | otherwise = existe a x