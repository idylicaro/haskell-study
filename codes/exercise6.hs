-- 1)


-- 2)
reduce :: (Int->Int->Int)->[Int]->Int   
reduce f [a] = a
reduce f (x:xs) = f x (reduce f xs)

maP :: (Int -> Int) -> [Int] -> [Int]
maP f [] = []
maP f (x:xs) = f x : (maP f xs)

-- não entendi muito bem como resolver essa 2 questão
-- pq não consigo visualizar fazendo a chamada do map
-- dentro da função, eu entendi assim que eu chamaria 
-- assim:
-- reduce (+) (maP (*2) [1,2,3,4,5])

mapReduce:: [Int]->(Int->Int->Int)->(Int -> Int)->Int
mapReduce a r m = (reduce (r) (maP (m) a))

-- mapReduce [1,2,3,4,5] (+) (2*)
