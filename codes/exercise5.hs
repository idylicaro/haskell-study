--1)
tuplaGenerator :: [a]->[b]->[(a,b)]
tuplaGenerator l1 l2 = [(x,y) | x<-l1, y<-l2]

-- 2)
listSelect :: [a] -> Int -> [a]
listSelect [] 0 = []
listSelect (x:xs) y     | y /= 0 = x : listSelect xs (y-1)
                        | otherwise = []

-- 3)
lastElement :: [a] -> a
lastElement [x] = x
lastElement (_:xs) = lastElement xs 