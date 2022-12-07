module LastLesson where
    sum' :: [Int] -> Int
    sum' [] = 0
    sum' (x:xs) = x + sum' xs

    {-
    sum [5,3,2,1]
    5 + (sum [3,2,1])
    5 + (3 + (sum [2,1]))
    5 + (3 + (2 + (sum [1])))
    5 + (3 + (2 + (1 +sum [])))
    5 + (3 + (2 + (1 + 0)))         --> Rekurzió mélypontja
    5 + (3 + (2 + (1)))
    5 + (3 + (3))
    5 + (6)
    11
    -}

    sum2 :: Int -> [Int] -> Int
    sum2 acc [] = acc 
    sum2 acc (x:xs) = sum2 (acc+x) xs
    
    {-
    sum2 0  [5,3,2,1]
    sum2 5  [3,2,1]
    sum2 8  [2,1]
    sum2 10 [1]
    sum2 11 []
    11
    -}

    foldl_ :: (b -> a -> b) -> b -> [a] -> b
    foldl_ _ acc [] = acc
    foldl_ f acc (x:xs) = foldl_ f (f acc x) xs

    foldr_ :: (a -> b -> b) -> b -> [a] -> b
    foldr_ _ acc [] = acc
    foldr_ f acc (x:xs) = x `f` (foldr_ f acc xs)



    mapl :: (a -> b) -> [a] -> [b]
    mapl f l = foldl_ (\acc x -> acc ++ [f x]) [] l

    mapr :: (a -> b) -> [a] -> [b]
    mapr f l = foldr_ (\x acc -> (f x):acc) [] l

    {-      (:) vs. (++)     -}
    {- 
    [1,2,3]
    [] ++ [3]       ~~> [3]
    [3] ++ [4]      ~~> [3,4]
    [3,4] ++ [5]    ~~> [3,4,5]

    (3:(4:(5:[])))
    -}

    length' :: [a] -> Int
    length' [] = 0
    length' (a:as) = 1 + length' as

    lengthf :: [a] -> Int
    lengthf l = foldl (\acc _ -> acc + 1) 0 l

    --(0.63 secs, 88,461,472 bytes)     map
    --(0.75 secs, 89,543,440 bytes)     mapr
    --(7.95 secs, 4,381,760,560 bytes)  mapl
