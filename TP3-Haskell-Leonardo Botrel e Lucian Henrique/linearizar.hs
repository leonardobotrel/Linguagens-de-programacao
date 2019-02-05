linearizar :: [[a]] -> [a]
linearizar [] = []
linearizar ([]:x) = linearizar x
linearizar ((x:y):z) = x:linearizar (y:z)