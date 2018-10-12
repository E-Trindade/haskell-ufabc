module Blocks where

import Graphics.Gloss
import Ball

blocksPerRow :: Int
blocksPerRow = 15

blockSize :: (Float, Float)
blockSize = (20, 10)

bHalfWidth :: Float
bHalfWidth  = (1 + fst blockSize) / 2

bHalfHeight :: Float
bHalfHeight = (1 + snd blockSize) / 2

data BlockInfo = Block
  {
    blockPos :: Position,
    blockColor :: Color
  }

type Blocks = [BlockInfo]

hasBlocks :: Blocks -> Bool
hasBlocks blocks = length blocks > 0

drawBlocks :: Blocks -> Picture
drawBlocks bs = pictures
                $ map drawBlock bs
                where
                  drawBlock (Block (x, y) col) = translate x y
                                                 $ color col
                                                 $ block
                  block                        = rectangleSolid w h
                  (w, h)                       = blockSize


genBlock :: Int -> BlockInfo
genBlock id = Block (px i, py i)
              where
                px i = -250 + (i `mod` blocksPerRow) * 35
                py i = 100 - (i `div` blocksPerRow) * 40
