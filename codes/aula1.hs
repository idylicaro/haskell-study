double :: Int->Int
double n = n*2
--double :: Float-> Float
--dobro n = n*2

sum :: Float->Float->Float
sum x y = x+y


fxdouble :: Int->Int
fxdouble n = n * double(n)

cubo :: Int->Int
cubo x = x^3

area_circle :: Float->Float
area_circle radius = pi * (radius ^ 2)  

area_rectangle :: Float->Float->Float
area_rectangle b h = b*h
