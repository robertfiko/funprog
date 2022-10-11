module Lesson1 where
    -- egy soros
    {-
    tobb soros komment
    meg egy sor
    szia
    -}

    one :: Int
    one = 1

    one :: Int
 

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
    
    isOdd :: Int -> (Bool)
    --isOdd n = mod n 2 /= 0
    --isOdd n = not (isEven n)
    isOdd n = not (mod n 2 == 0)

    -- tuple
    tupleize :: Int -> Int -> (Int, Int)
    tupleize a b = (a,b)

    alma :: (Int, Int) -> Int
    alma (x,y) = x*y

    --curryzés




