module Lesson2 where
    {-
    Int -> Int -> Int
    Bool -> Bool -> Bool

    Num a => a -> a -> a


    -}

    area :: Int -> Int -> Int
    area a b = a * b

    divisible :: Int -> Int -> Bool
    divisible a b = mod a b == 0

    isOne :: Int -> Bool
    --isOne a = a == 1
    isOne 1 = True
    isOne _ = False

    and' :: Bool -> Bool -> Bool
    and' True True = True
    and' _ _ = False

    or' :: Bool -> Bool -> Bool
    or' False False = False
    or' _ _  = True 


    mulThree :: Int -> Int -> Int -> Int
    mulThree a b c = a*b*c

    mulTwoWithNine' :: Int -> Int -> Int
    --mulTwoWithNine' a b = mulThree 9 a b
    mulTwoWithNine' = mulThree 9 

    tuple1 :: (Int, Bool)
    tuple1 = (1, True)

    tuple2 :: (Int, Bool, Char)
    tuple2 = (2, False, 'c')

    list1 :: [Int]
    list1 = [4975,35,345,235,23,4234,213,12,3]

    isEven0 :: Int -> (Int, Bool)
    isEven0 a = (a, even a)

    


