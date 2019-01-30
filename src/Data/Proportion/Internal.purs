module Data.Proportion.Internal where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Proportion n = MkProportion n
derive instance eqProportion :: Eq n => Eq (Proportion n)
derive instance ordProportion :: Ord n => Ord (Proportion n)
derive instance genericProportion :: Generic (Proportion n) _
instance showProportion :: (Show n) => Show (Proportion n) where
  show = genericShow
