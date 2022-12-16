module Konzi where
    zip' :: [a] -> [b] -> [(a,b)]
    zip' [] _ = []
    zip' _ [] = []
    zip' (x:xs) (y:ys) = (x,y):(zip xs ys)

    zipr :: [(a,b)] -> ([a], [b])
    zipr l = zipr_seged l [] []

    zipr_seged :: [(a,b)] -> [a] -> [b] -> ([a], [b])
    zipr_seged [] u i = (u,i)
    zipr_seged ((x,y):tail) u i = zipr_seged tail (u ++ [x]) (i ++ [y])

    alma :: (Num a, Num b) => [a] -> [b] -> [a] -> [b] -> ([a], [b])
    alma [] [] u i = (u,i)
    alma (a:as) (b:bs) u i = alma as bs (u ++ [a + 1]) (i ++ [b + 2])