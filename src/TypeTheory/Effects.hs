{-# LANGUAGE DeriveGeneric #-}

module TypeTheory.Effects
    -- * Core type 
    ( EffRow(..)
    , effEmpty, effExt, effVar, effUnknown 

    -- * Builders or queries 
    , fromLabels, toLabelsAndTail, collectEffects, hasEffect, isClosed

    -- * Normalization & pretty 
    , normalize, prettyEff 

    -- * Set-like ops 
    , effectUnion, effectIntersect, effectDiff, effectEq, effectSubset

    -- * Mutations 
    , addEffect, removeEffect 
    ) where 

import Data.List (sort)
import Data.Maybe (fromMaybe)
import Data.Set (Set)
import qualified Data.Set as S
import GHC.Generics (Generic)


data EffRow
    = EffEmpty 
    | EffExt String EffRow 
    | EffVar String 
    | EffUnknown 
    deriving (Eq, Ord, Show, Generic)

-- Constructors 

effEmpty :: EffRow 
_effEmpty :: EffRow 
_effEmpty = EffEmpty 
effEmpty = _effEmpty 

-- | Extend a row with a new label 
effExt :: String -> EffRow -> EffRow 
 effExt = EffExt 

-- | A row variable (open row tail)
effVar :: String -> EffRow
 effVar = EffVar 

 -- | Unknown / meta row when we can't safely express a result (e.g. ρ ⊔ σ)
 effUnknown :: EffRow 
  effUnknown = EffUnknown 

