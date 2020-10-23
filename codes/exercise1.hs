-- 1)
fatorial :: Int->Int
fatorial 1 = 1
fatorial x = x * fatorial(x-1)

-- 2)
fibonacci :: Int->Int
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

-- 3)
somatorio :: Int->Int
somatorio 1 = 1
somatorio n = n + somatorio(n-1)

-- 4)
eqTripla :: Int->Int->Int->Bool
eqTripla a b c = (a==b) && (b==c)

-- 5)
is_triangle :: Int->Int->Int->Bool
is_triangle a b c = not (a>(b+c) || b>(a+c) || c>(a+b))

-- 6)
is_triangle_equilatero :: Int->Int->Int->Bool
is_triangle_equilatero a b c = (is_triangle a b c) && (a == b && b == c)

-- 7)
is_triangle_isosceles :: Int->Int->Int->Bool
is_triangle_isosceles a b c = (is_triangle a b c) && (a == b || b == c || c == a)

-- 8)
is_triangle_escaleno :: Int->Int->Int->Bool
is_triangle_escaleno a b c = (is_triangle a b c) && (a/=b && b /= c)

-- 9)
is_diff :: Int->Int->Int->Bool 
is_diff a b c = a/= b && b/=c

-- 10)
is_diff_four :: Int->Int->Int->Int->Bool
is_diff_four a b c d = (is_diff a b c) && (is_diff a b d) && (is_diff a c d) && (is_diff d b c)