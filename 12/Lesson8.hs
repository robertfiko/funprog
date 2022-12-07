module Lesson8 where
    s _ [] a b = (a,[])
    s p (x:xs) a b 
        | p x = s p xs (x:a) b
        | otherwise = (a,(x:xs) ++ b)

    span :: (a -> Bool) -> [a]{-véges-} -> ([a],[a])
    span p (x:xs) = s p (x:xs) [] []