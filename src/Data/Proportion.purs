module Data.Proportion
  ( module Data.Proportion
  , module ForReExport
  ) where

import Prelude

import Data.Maybe (Maybe(..))

import Data.Proportion.Internal (Proportion(..))
import Data.Proportion.Internal (Proportion) as ForReExport

mk :: Number -> Maybe Proportion
mk n | 0.0 <= n && n <= 1.0 = Just $ MkProportion n
     | otherwise = Nothing

unMk :: Proportion -> Number
unMk (MkProportion n) = n
