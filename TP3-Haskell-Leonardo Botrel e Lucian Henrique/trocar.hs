trocar :: Int -> [Int]
trocar a
  | a<=0 = []
  | a == 1 = [1]
  | (a-100)>= 0 = trocar (a-100) ++ [100]
  | (a-50)>= 0 = trocar (a-50) ++ [50]
  | (a-10)>= 0 = trocar (a-10) ++ [10]
  | (a-5)>= 0 = trocar (a-5) ++ [5]
  | (a-1)>= 0 = trocar (a-1) ++ [1]