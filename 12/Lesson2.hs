module Lesson2 where
    area :: Int -> Int -> Int
    area a b = (*) a b

    isDivisible :: Int -> Int -> Bool
    isDivisible a b = mod a b == 0

    and' :: Bool -> Bool -> Bool
    and' True True = True
    and' _ _ = False

    or' :: Bool -> Bool -> Bool
    or' False False = False
    or' _ _  = True

    -- Num a => a -> a -> a

    mulThree :: Int -> Int -> Int -> Int
    mulThree a b c = a * b * c
    
    --let mulTwoWithNine = mulThree 9
    
    alma :: (Int, Int) -> Int
    alma (x,y) = x*y
