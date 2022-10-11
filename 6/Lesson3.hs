module Lesson3 where

--import Prelude hiding (length, sum, last, init, minimum, concat, (++), zip)

--tuple1
tuple1 :: (Int, (Int, Int), Bool, Char, Float,  Double, String)
tuple1 = (3, (4, 5), True, 'a', 4.5, 6.3, "alma")



--tuple2 


funTuple :: (Int -> Int, Int -> Bool)
funTuple = ((*) 2,even)





--isEvenTuple :: Int -> (Int, Bool)


triplicate :: a -> (a,a,a)
triplicate a = (a,a,a)



doubleTheTuple :: (Num a, Ord b) => (a, b) -> ((a,b), (a,b))
doubleTheTuple a = (a,a)




-- parametrikusan polimorf függvények

-- lusta kiértékelés




-- rekurzió:

fact :: Int -> Int
fact 0 = 1
fact a = a * fact (a-1)



-- fact 3 
-- 3 * (fact 2)
-- 3 * (2 * (fact 1))
-- 3 * (2 * (1 * (fact 0)))
-- 3 * (2 * (1 * (1)))
-- 3 * (2 * 1)
-- 3 * 2
-- 6

-- 
fib :: Int{- >0 -} -> Int
fib 1 = 0
fib 2 = 1
fib n = fib (n-1) + fib (n-2)



pow :: Int -> Int -> Int
--pow a 1 = a
pow _ 0 = 1
pow x y = x * pow x (y-1)




-- listák 

--[1,2,3,4] ~ (x:xs) ~ (1:[2,3,4])

head' :: [a] -> a
head' (x:xs) = x


tail' :: [a] -> [a]
tail' (x:xs) = xs


length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs



sum' :: Num a => [a] -> a
--sum' (a:[]) = a
suM' [a] = a
sum' (a:as) = a + sum'(as)


--last :: [a]{-nemüres-} -> a

-- init :: [a]{-nemüres-} -> [a]


minimum' :: Ord a => [a]{-véges, nemüres-} -> a
minimum' [a] = a
minimum' (a:b:bs) = minimum' ((min a b):bs)

--concat :: [[a]] -> [a]


--(++) :: [a] -> [a] -> [a]


zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (a:as) (b:bs) = (a,b):zip' as bs


