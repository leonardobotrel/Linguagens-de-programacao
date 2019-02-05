potencia :: Int -> Int -> Int
potencia b 0 = 1
potencia b e
  | e < 0 = 1 `div` modulo
  | otherwise = b * potencia b (e-1)
   where modulo = b * potencia b ((e * (-1))-1)