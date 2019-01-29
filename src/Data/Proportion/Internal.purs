module Data.Proportion.Internal where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Proportion = MkProportion Number
derive instance eqProportion :: Eq Proportion
derive instance ordProportion :: Ord Proportion
derive instance genericProportion :: Generic Proportion _
instance showProportion :: Show Proportion where
  show = genericShow
