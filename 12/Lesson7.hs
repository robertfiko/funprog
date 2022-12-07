module Lesson7 where
    type Year = Int

    add4Yrs :: Year -> Year
    add4Yrs a = a + 4

    newtype Square = S (Char, Int) deriving (Show)


    s :: (Char, Int) -> Square
    s (a,b) = S (a,b)


    newtype Name = N String deriving (Eq)
    type SN = String

    --type String = [Char]

    newtype HDPoint = ThreeDP (Int, Int, Int) deriving (Show)
    foo :: HDPoint -> HDPoint
    foo (ThreeDP (a,b,c)) = ThreeDP (a+1,b+2,c+3)

    newtype IPoint = P (Int, Int) deriving (Show, Eq)

    mirrorO :: IPoint -> IPoint
    mirrorO (P (a, b)) = P ((-1)*a, (-1)*b)

    mirrorP :: IPoint -> IPoint -> IPoint
    mirrorP (P (a, b)) (P (x, y)) = P ((2*a-x), (2*b-y))



    translate :: (Int, Int) -> IPoint -> IPoint
    translate (a,b) (P (x,y)) = P ((a+x), (b+y))

  


