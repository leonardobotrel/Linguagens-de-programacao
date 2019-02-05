removeFim :: [Int]->[Int]
removeFim [] = []
removeFim [_] = []
removeFim (b:x) = [b] ++ removeFim x

removerFim :: Int->[Int]->[Int]
removerFim 0 x = x
removerFim a [] = []
removerFim a [_] = []
removerFim a x = removerFim (a-1) (removeFim x)