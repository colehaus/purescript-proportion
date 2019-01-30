module Data.Proportion
  ( module Data.Proportion
  , module ForReExport
  ) where

import Prelude

import Data.Maybe (Maybe(..))

import Data.Proportion.Internal (Proportion(..))
import Data.Proportion.Internal (Proportion) as ForReExport

mk :: forall n. Ord n => Semiring n => n -> Maybe (Proportion n)
mk n | zero <= n && n <= one = Just $ MkProportion n
     | otherwise = Nothing

unMk :: forall n. Proportion n -> n
unMk (MkProportion n) = n
