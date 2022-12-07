module Lesson7 where
    newtype Year = Y Int deriving (Eq, Ord, Show)

    newtype IPoint = P (Int, Int) 
    deriving (Eq, Ord, Show)

    mirrorO :: IPoint -> IPoint
    mirrorO (P (a, b)) = P ((-1)*a, (-1)*b)










    translate :: (Int, Int) -> IPoint -> IPoint
    translate (a,b) (P (x,y)) = P (x+a, y+b)






    newtype Name = N String deriving (Eq)
    type SN = String 