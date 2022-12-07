module Lesson6 where
    import Data.Char

    cipher :: String -> String
    --cipher [] = []
    --cipher (a:[]) = []
    --cipher (a:b:[]) = []
    cipher (a:b:c:xs)
        | Data.Char.isLetter(a) && Data.Char.isLetter(b) && Data.Char.isDigit(c) = [a,b]
        | otherwise = cipher (b:c:xs)
    --cipher _ = []


    mightyGale :: [(String, Int, Int, Int)] -> String
    mightyGale [] = []
    mightyGale ((v,_,s,_):xs)
        | s > 110 = v
        | True = mightyGale xs

    
    middle :: [a] -> [a]
    middle [] = []
    middle (x:xs)
        | length xs > 0 = init xs
        | otherwise = []

    doubleElements :: [a] -> [a]
    doubleElements [] = []
    doubleElements (x:xs) = x:x:doubleElements xs

    