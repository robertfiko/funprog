module Lesson72 where
    data IPoint = P Int Int
        deriving (Eq, Ord, Show)


    translate :: (Int, Int) -> IPoint -> IPoint
    translate (a,b) (P x y) = P (a+x) (b+y)

    data Direction = L | R deriving (Eq, Ord, Show)


    {-
    Todo: Feladat: L-ek száma [*]

    -}

    data Answer = No | Maybe | Yes deriving (Eq, Ord, Show)