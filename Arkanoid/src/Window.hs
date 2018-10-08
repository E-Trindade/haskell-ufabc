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

