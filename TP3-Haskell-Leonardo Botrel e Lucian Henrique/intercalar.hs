intercalar :: [Int] -> [Int] -> [Int]
intercalar [] x = x
intercalar x [] = x
--intercalar x y  ordenada x == False `or` ordenada y == False = []
intercalar (a:x) (b:y)
  | ordenada ([a] ++ x) == False = []
  | ordenada ([b] ++ y) == False = []
  | a<=b = [a] ++ intercalar x (b:y)
  | otherwise = [b]++ intercalar (a:x) y

--verifica :: [Int] -> [Int] -> [Int]
--verifica [] [] = False
--verifica x y = ordenada x `and` ordenada y

ordenada :: [Int] -> Bool
ordenada [] = True
ordenada [x] = True
ordenada (a:x)
  | a > proximo x = False
  | otherwise = ordenada x

proximo :: [Int] -> Int
proximo [] = 0
proximo [x] = x
proximo (a:x) = a
