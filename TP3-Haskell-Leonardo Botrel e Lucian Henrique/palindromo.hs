reverter :: [Int] -> [Int]
reverter [] = []
reverter (a:x) = reverter x ++ [a]

palindromo :: [Int] -> Bool
palindromo x = reverter x == x