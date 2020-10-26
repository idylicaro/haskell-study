-- 1)
imparOupar :: Int->String
imparOupar x 
    |(mod x 2 > 0) = "Ímpar"
    |(mod x 2 == 0) = "Par"

-- 2)
is_multiplo :: Int->Int->Bool
is_multiplo x y = (mod x y == 0)

mult235 :: Int->String
mult235 x
    | (is_multiplo x 2) = "E Multiplo de 2"
    | (is_multiplo x 3) = "E Multiplo de 3"
    | (is_multiplo x 5) = "E Multiplo de 5"
    | otherwise = "Nao é multiplo de nenhum deles!"

max :: Int->Int->Int->Int
max a b c 
    | (a > b && a > c) = a
    | (b > a && b > c) = b
    | (c > a && c > b) = c