module Ball where
import Graphics.Gloss

type Position = (Float, Float)

ballSize :: Float
ballSize = 5

ballColor :: Color
ballColor = red

ball :: Position -> Picture
ball = Circle ballSize
       >>= translate 5.0 5.0
