-- 1)
reverseList :: [Int] -> [Int]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

-- 2)
contains :: Int -> [Int] -> Bool
contains _ [] = False
contains n (x:xs) | n == x = True
                  | otherwise = contains n xs

-- 3)
mapOfN :: Int -> [Int] -> [Int]
mapOfN _ [] = []
mapOfN n (x:xs) = x*n : mapOfN n xs

-- 4)
maxNumber :: [Int] -> Int
maxNumber [x] = x
maxNumber (x:xs) 
 | (maxNumber xs) > x = maxNumber xs
 | otherwise = x