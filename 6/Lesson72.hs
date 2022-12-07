module Lesson72 where
        data IPoint = P Int Int
            deriving (Eq, Ord, Show)

        mirrorO :: IPoint -> IPoint
        mirrorO (P x y) = P (-x) (-y)

        translate :: (Int, Int) -> IPoint -> IPoint
        translate (a,b) (P x y) = P (x+a) (y+b)

        data Day = Mon | Tue | Wed | Thu | Fri | Sat | Sun

        data SimpleColour = RGB Int Int Int | HSL Int Int Int

        whiteHSL :: SimpleColour
        whiteHSL = HSL 0 0 100

        whiteRGB :: SimpleColour
        whiteRGB = RGB 255 255 255

        {-
        



whiteSimple :: ?? 
whiteSimple = ??

instance Show Day where
    ??
    
-- RGB (0-255) (0-255) (0-255)
-- HSL (0-359) (0-100) (0-100)
data Colour = ??
--   deriving ??

whiteRGB :: ??
whiteRGB = ??

whiteHSL :: ??
whiteHSL = ??

instance ?? Colour ??
    ??
    ??


instance ?? Colour ??
    ??
    ??
    ??
        -}
