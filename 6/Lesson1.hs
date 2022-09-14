module Lesson1 where

    -- egy soros komment
    {-
    több soros komment
    hello
    -}

    one :: Int
    one = 1

    two :: Int
    --two = one + 1 
    --two = one + one
    two = (+) one one

    inc :: Int -> Int
    inc a = a + 1

    incTwice :: Int -> Int
    incTwice a = inc (inc a)

    isEven :: Int -> Bool
    isEven a = mod a 2 == 0

    isOdd1 :: Int -> Bool
    isOdd1 a = not (isEven a)

    isOdd2 :: Int -> Bool
    isOdd2 a = mod a 2 == 1
    --isOdd2 a = mod a 2 /= 0
foo :: Int -> Int -> In
    t
    foo a b = a + b

