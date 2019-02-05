somaParciais :: [Int] -> [Int]
somaParciais [] = []
--somaParciais [_] = [_]
somaParciais x = somaParciais (removeFim x) ++ [soma x]

removeFim :: [Int]->[Int]
removeFim [] = []
removeFim [_] = []
removeFim (b:x) = [b] ++ removeFim x

soma :: [Int] -> Int
soma [] = 0
soma (a:x) = a + soma x