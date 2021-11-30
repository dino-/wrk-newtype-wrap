module Library.Module
  ( Address (..)
  , Name (..)
  , Record (..)
  , Zip (..)
  , Zip4 (..)
  , formatZip
  )
  where

newtype Name = Name { getName :: String } deriving Show
newtype Address = Address { getAddress :: String } deriving Show
newtype Zip = Zip { getZip :: Int } deriving Show
newtype Zip4 = Zip4 { getZip4 :: Int } deriving Show

data Record = Record
  { rName :: Name
  , rAddress :: Address
  , rZip :: Zip
  , rZipPlus4 :: Zip4
  }
  deriving Show


formatZip :: Zip -> Zip4 -> String
formatZip (Zip zip') (Zip4 zip4) = (show zip') <> "-" <> (show zip4)
