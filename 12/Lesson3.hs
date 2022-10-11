module Lesson3 where

--import Prelude hiding (length, sum, last, init, minimum, concat, (++), zip)

tuple1 :: (Int, Int, Int)
tuple1 = (1,2,3)


tuple2 :: (Integer, String, Bool, Char, Double, Float, (Int, Char), [Int])
tuple2 = (239579346765456786, "Shtring", 0 == 1, 'λ', 6.9, 4.20, (1, '§'), [1,2,3,4])


funTuple :: (Int -> Int, Int -> Bool)
funTuple = (mod 3, even)




--isEvenTuple :: Int -> (Int, Bool)


triplicate :: a -> (a,a,a)
triplicate a = (a,a,a)



doubleTheTuple :: (Num a, Ord b) => (a, b) -> ((a,b), (a,b))
doubleTheTuple (a,b) = ((a,b), (a,b))


-- parametrikusan polimorf függvények

-- lusta kiértékelés




-- rekurzió:

fact :: Int -> Int
fact 0 = 1
fact n = n * fact(n-1)


-- fact 3 
-- 3 * (fact 2)
-- 3 * (2 * (fact 1))
-- 3 * (2 * (1 * (fact 0)))
-- 3 * (2 * (1 * (1)))
-- 3 * (2 * 1)
-- 3 * 2
-- 6

fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)



pow :: Int -> Int -> Int
pow _ 0 = 1
--pow a 1 = a
pow b e = b * pow b (e-1)



-- listák 

--[1,2,3,4] ~ (x:xs) ~ (1:[2,3,4])

head' :: [a] -> a
head' (x:xs) = x

tail' :: [a] -> [a]
tail' (x:xs) = xs


length' :: [a] -> Int
length' [] = 0
length' (a:as) = 1 + length' as


sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs



--last :: [a]{-nemüres-} -> a

-- init :: [a]{-nemüres-} -> [a]


minimum' :: Ord a => [a]{-véges, nemüres-} -> a
minimum' [x] = x
minimum' (x:y:xys) = minimum' ((min x y) : xys)

--concat :: [[a]] -> [a]


--(++) :: [a] -> [a] -> [a]




zip' :: [a] -> [b] -> [(a,b)]
zip' [] [] = []
zip' (x:xs) (y:ys) = (x,y):(zip' xs ys)


