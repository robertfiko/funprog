module Lesson4 where
    f :: Int -> Int -> Int
    f x y = x^2 + 3*y + 4*x*y

    g :: Int -> Int -> Int
    g x y = f z z where z = (5*x + 7*y)

    add2 :: Int -> Int -> Int
    add2 x y = x + y + 2

    multi2 :: Int -> Int -> Int
    multi2 x y = (x+y)*2

    calc :: Int -> Int -> Int
    calc x y = magic x y where magic x y = add2 x y + multi2 x y
