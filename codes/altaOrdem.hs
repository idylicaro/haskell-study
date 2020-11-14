map :: (Int -> Int) -> [Int] -> [Int]
map f [] = []
map f (x:xs) = f x : (map f xs)


filter :: (a -> Bool) -> [a] -> [a]
filter f [] = []
filter f (x:xs)
    | f x = x : filter f xs
    | otherwise = filter f xs

reduce :: (Int->Int->Int)->[Int]->Int   
reduce f [a] = a
reduce f (x:xs) = f x (reduce f xs)