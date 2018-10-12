module Ball where
import Graphics.Gloss

type Position = (Float, Float)
type Velocity = Position

ballSize :: Float
ballSize = 15

ballColor :: Color
ballColor = red

ball :: Position -> Picture
ball (x, y) = translate x y
                $ Circle ballSize

moveBall :: Float -> Position -> Velocity -> Position
moveBall seconds (x, y) (vx, vy) = (x', y')
  where
    x' = x + vx * seconds
    y' = y + vy * seconds
