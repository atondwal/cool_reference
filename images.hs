#!/usr/bin/env runhaskell
import Text.Pandoc.JSON
import Data.List

main :: IO ()
main = toJSONFilter unimg
  where unimg i@(Image (alt@(RawInline _ a):[]) ('i':'m':'g':xs,_))
              | isInfixOf "...\n..." a  = i
              | otherwise = alt
        unimg x = x
