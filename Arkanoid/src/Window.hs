module Window where
import Graphics.Gloss

--InWindow :: String -> (Int, Int) -> (Int, Int) -> Display

-- | Largura da janela.
width :: Int
width = 800
-- | Altura da janela.
height :: Int
height = 600
-- | Posição da janela.
offset :: Int
offset = 100
-- | Cor de fundo.
background :: Color
background = white

window :: Display
window = InWindow "Arkanoid" (width, height) (offset, offset)

halfWidth :: Float
halfWidth = fromIntegral width / 2

halfHeight :: Float
halfHeight = fromIntegral height / 2

wallColor :: Color
wallColor = green

topWall :: Picture
topWall = translate 0 halfHeight
         $ color wallColor
         $ rectangleSolid (fromIntegral width) 10

leftWall :: Picture
leftWall = translate (-halfWidth) 0
         $ color wallColor
         $ rectangleSolid 10 (fromIntegral height)

rightWall :: Picture
rightWall = translate halfWidth 0
         $ color wallColor
         $ rectangleSolid 10 (fromIntegral height)

walls :: Picture
walls = pictures [leftWall, rightWall, topWall]

renderTxt :: Color -> String -> Picture
renderTxt col value = scale 0.3 0.3
                     $ color col
                     $ translate (-150) 150
                     $ text value

curMsg :: Int -> Bool -> Picture
curMsg    0  paused = pauseMsg paused
curMsg  (-1) paused = lostMsg
curMsg    _  paused = winnMsg

winnMsg   = renderTxt green "You won! (r = new game)"
lostMsg   = renderTxt red   "Git gud! (r = new game)"
pauseMsg True  = renderTxt blue "Press p to play!"
pauseMsg False = renderTxt blue ""
