-- !)
fatorial :: Int->Int
fatorial 1 = 1
fatorial x = x * fatorial(x-1)


fibonacci :: Int->Int
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

