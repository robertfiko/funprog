module SadLastLesson where
    {-
    [5,3,2,1] -->
    5 + sum [3,2,1]
    5 + (3 + sum [2,1])
    5 + (3 + (2 + sum [1]))
    5 + (3 + (2 + (1 + sum [])))
    5 + (3 + (2 + (1 + 0)))         REK. Mély pontja; felszálló ág jön
    5 + (3 + (2 + 1))
    5 + (3 + 3)
    5 + 6
    11

    0       [5,3,2,1]
    0+5=5   [3,2,1]
    5+3=8   [2,1]
    8+2=10  [1]
    10+1=11 []
    11    

    
    -}

    sum' :: (Num a) => [a] -> a  
    sum' xs = foldl (\acc x -> acc + x) 0 xs 

    --(x:xs) ~~> x + sum xs 

    --sum2 0 [5,3,2,1]
    sum2 :: Int -> [Int] -> Int
    sum2 acc [] = acc
    sum2 acc (x:xs) = sum2 (acc + x) xs

    foldl_ :: (b -> a -> b) -> b -> [a] -> b
    foldl_ _ acc [] = acc
    foldl_ f acc (x:xs) = foldl_ f (f acc x) xs

    mapl :: (a -> b) -> [a] -> [b]
    mapl f l = foldl_ (\acc x -> acc ++ [f x]) [] l 

    --JÓ:
    -- [2] ++ [4]       
    -- [2,4] ++ [6]
    -- [2,4,6]

    -- ROSSZ:
    -- 2:[] ~> [2]
    -- 4:[2] ~> [4,2]
    -- 6:[4,2] ~> [6,4,2]

    {- (++) vs. (:) -}

    --foldl (acc elem -> newelem)
    --foll (elem acc -> newelem)

    mapr :: (a -> b) -> [a] -> [b]
    mapr f l = foldr (\x acc -> (f x):acc) [] l 

    -- 2:(4:(6:[]))
    
    length' :: [a] -> Int
    length' [] = 0
    length' (a:as) = 1 + length' as

    lengthf :: [a] -> Int
    lengthf l = foldl (\acc _ -> acc + 1) 0 l
