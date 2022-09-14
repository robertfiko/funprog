module Lesson1 where
    -- egy soros
    {-
    tobb soros komment
    meg egy sor
    szia
    -}

    one :: Int
    one = 1

    two :: Int
    --two = one + one
    two = (+) ((+) one one) one

    inc :: Int -> Int
    inc a = a + 1

    incTwice :: Int -> Int
    incTwice a = inc (inc a)
    
    isEven :: Int -> Bool
    isEven n = n `mod` 2 == 0
    --isEven n = mod n 2 == 0
    
    isOdd :: Int -> Bool
    --isOdd n = mod n 2 /= 0
    --isOdd n = not (isEven n)
    isOdd n = not (mod n 2 == 0)





