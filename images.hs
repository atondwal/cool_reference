#!/usr/bin/env runhaskell
import Text.Pandoc.JSON

main :: IO ()
main = toJSONFilter unimg
  where unimg (Image (alt:[]) src) = alt
        unimg x = x
