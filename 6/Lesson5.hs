module Lesson5 where
    import Prelude hiding ((++))
    pythagoreanTriple :: Int -> [(Int, Int, Int)]
    pythagoreanTriple n = [ (a,b,c) | a <- [1..n], b <- [1..a], c <- [1..a+b], a^2 + b^2 == c^2 ]

    (++) :: [a] -> [a] -> [a]
    (++) l [] = l
    (++) [] l = l
    (++) (x:xs) l = x:(xs ++ l)

    --(@@) :: a -> a -> a

    max' :: (Ord a) => a -> a -> a
    max' a b
        | a < b = b
        | otherwise = a

    sgn :: Int -> Int
    sgn a
        | a == 0 = 0
        | a > 0 = 1
        | a < 0 = (-1)

    sgn' :: Int -> Int
    sgn' a
        | a == zero = a
        | a > zero = 1
        | a < zero = (-1) where zero = 0

    sgn'' :: Int -> Int
    sgn'' a
        | a == zero = a
        | isPos a = 1
        | not (isPos a) = (-1) where 
            zero = 0
            isPos a = a > 0

        
    isPrefixOf :: Eq a => [a] -> [a] -> Bool
    isPrefixOf _ [] = False
    isPrefixOf [] _ = True
    isPrefixOf (p:ps) (x:xs)
        | p == x = isPrefixOf ps xs
        | otherwise = False

    elem' :: Eq a => a -> [a] -> Bool
    elem' _ [] = False
    elem' e (l:ls)
        | e == l = True
        | otherwise = elem' e ls

    take' :: Int -> [a] -> [a]
    take' _ [] = []
    take' n (x:xs)
        | n > 0 = x:take' (n-1) xs
        | otherwise = []
        
    reverse' :: [a] -> [a]
    reverse' [] = []
    reverse' (x:xs) = reverse' xs ++ [x]

    nub' :: Eq a => [a] -> [a]
    nub' [] = []
    nub' (x:xs)
        | elem x xs = nub' xs
        | otherwise = x:(nub' xs)

    drop' :: Int -> [a] -> [a]
    drop' _ [] = []
    drop' n l@(x:xs)
        | n > 0 = drop' (n-1) xs
        | n <= 0 = l

    splitAt' :: Int -> [a] -> ([a], [a])
    splitAt' n l = (take n l, drop n l)
