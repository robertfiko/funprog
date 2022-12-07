module Lesson10 where
    import Prelude hiding ((.), Either, Left, Right, lookup)
    import Data.Char
    
    -- f . g
    -- f: a -> b
    -- g: c -> a
    -- f(g(x)) = f . g: c -> b
    (.) :: (a -> b) -> (c -> a) -> c -> b
    (.) f g = (\y -> f (g y))

    data Either a b = Left a | Right b

    lookup :: Eq k => k -> [(k,v)] -> Maybe v
    lookup _ [] = Nothing
    lookup k ((a,b):xs) 
        | k == a = Just b
        | otherwise = lookup k xs

    helper :: String -> String
    helper [] =  []
    helper (x:xs)
        | isDigit x = x:helper xs
        | otherwise = '|':helper xs

    

    splitOn :: Char -> String -> [String]
    splitOn 

    numbersInString :: String -> [String]
    numbersInString x = splitOn '|' (helper x)