import Data.Map (fromListWith, toList)
--1)
q1 :: Ord a => [a] -> Bool
q1 [] = True
q1 [x] = True
q1 (x:y:xs)
    | x<y = q1 (y:xs)
    | otherwise = False


--2)
reduce :: (Int->Int->Int)->[Int]->Int   
reduce f [a] = a
reduce f (x:xs) = f x (reduce f xs)

fatorial :: Int->Int
fatorial 1 = 1
fatorial x = x * fatorial(x-1)

-- já daria o resultado correto
--q2 :: [Int] -> [Int]
--q2 [] = []
--q2 xs = [(fatorial x) | x <- xs, ( mod x 2) > 0]

q2 :: [Int] -> [Int]
q2 [] = []
q2 xs = [(reduce (*) (transformInList x)) | x <- xs, ( mod x 2) > 0]

transformInList :: Int -> [Int]
transformInList 1 = [1]
transformInList x = x : transformInList (x - 1)



--3) obs: Esqueci de perguntar se poderia usar funções de terceiros, mas nesse caso não iria dar tempo fazer todas essas funções para interagir com tuplas então fui atrás de funções que manipulavam tuplas.
-- toList :: Map k a -> [(k, a)] recebe um map e retorna uma lista dos resultados da interação
-- fromListWith :: Ord k => (a -> a -> a) -> [(k, a)] -> Map k aSource / ex: fromListWith (+) [(1,1),(1,1),(2,1),(2,1)] vai dar [(1,2),(2,2)]
-- no caso se vc passa [1,1,2,2] o list istComprenshion faz (1,1), (1,1), (2,1),(2,1), ai essa função fromListWith faz o somatorio dos elementos em comum da primeira variavel da tupla e soma a 2 variavel 
q3 :: (Ord a) => [a] -> [(a, Int)]
q3 xs = toList (fromListWith (+) [(x, 1) | x <- xs])