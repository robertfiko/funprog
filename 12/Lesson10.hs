module Lesson10 where

    data Colour = Named String | RGB Int Int Int -- RGB komponensekkel adott szín

    toRGB :: Colour -> (Int, Int, Int)
    toRGB (Named "black") = (0, 0, 0)
    toRGB (Named "white") = (255, 255, 255)
    toRGB (Named "red") = (255, 0, 0)
    toRGB (Named "green") = (0, 255, 0)
    toRGB (Named "blue") = (0, 0, 255)
    toRGB (RGB r g b) = (r, g, b)

    instance Eq Colour where
        (RGB r g b) == (RGB x y z) = r == x && g == y && z == b
        (Named x) == (Named a) = x == a
        (RGB r g b) == n@(Named _) = (toRGB n) == (r,g,b)
        n@(Named _) == (RGB r g b) = (toRGB n) == (r,g,b)