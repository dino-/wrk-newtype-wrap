{-# LANGUAGE DeriveGeneric #-}

module Library.Module
  ( Address (..)
  , Name (..)
  , Record (..)
  , Zip (..)
  , Zip4 (..)
  , formatZip
  )
  where

import GHC.Generics
import Control.Newtype.Generics


newtype Name = Name String deriving (Generic, Show)
instance Newtype Name

newtype Address = Address String deriving Show

newtype Zip = Zip Int deriving (Generic, Show)
instance Newtype Zip

newtype Zip4 = Zip4 Int deriving Show

data Record = Record
  { rName :: Name
  , rAddress :: Address
  , rZip :: Zip
  , rZipPlus4 :: Zip4
  }
  deriving Show


formatZip :: Zip -> Zip4 -> String
formatZip (Zip zip') (Zip4 zip4) = (show zip') <> "-" <> (show zip4)
