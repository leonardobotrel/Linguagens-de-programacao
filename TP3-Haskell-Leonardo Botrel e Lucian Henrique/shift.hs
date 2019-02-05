shift :: Int -> [Int] -> [Int]
shift 0 x = x
shift a [] = []
shift a (b:x) = shift (a-1) (x ++ [b])