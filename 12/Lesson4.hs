module Lesson4 where
    f :: Int -> Int -> Int
    f x y = x^2 + 3*y + 4*x*y

    g :: Int -> Int -> Int
    g x y = f formula formula where formula = (4*x + 7*y) + (21*x + 0*y)

    add2 :: Int -> Int -> Int
    add2 a b = a + b + 2

    multi2 :: Int -> Int -> Int
    multi2 a b = (a+b)*2

    calc :: Int -> Int -> Int
    calc a b = magic a b where magic a b = add2 a b + multi2 a b