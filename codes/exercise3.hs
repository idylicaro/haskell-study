-- 1)
size :: [Int] -> Int
size [] = 0
size (x:xs) = 1 + size xs

-- 2)
map2x :: [Int] -> [Int]
map2x [] = []
map2x (x:xs) = x*2 : map2x xs

-- 3)
is_par :: Int -> Bool
is_par x =  mod x 2 == 0

filterPar :: [Int] -> [Int]
filterPar [] = []
filterPar (x:xs)  |is_par x = x : filterPar xs
                  | otherwise =  filterPar xs

-- 4)
display_at :: [Int] -> Int -> [Int]
display_at [] 0 = []
display_at (x:xs) y     | y /= 0 = x : display_at xs (y-1)
                        | otherwise = []