{-# LANGUAGE DeriveGeneric #-}

module TypeTheory.Effects
    ( EffRow(..)
    , effEmpty, effExt, effVar, effUnknown 
    , fromLabels, toLabelsAndTail, collectEffects, hasEffect, isClosed
    , normalize, prettyEff 
    , effectUnion, effectIntersect, effectDiff, 
    )