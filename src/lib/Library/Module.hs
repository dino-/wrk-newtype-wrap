module Library.Module
  ( Record (..)
  , formatZip
  )
  where


data Record = Record
  { rName :: String
  , rAddress :: String
  , rZip :: Int
  , rZipPlus4 :: Int
  }
  deriving Show


formatZip :: Int -> Int -> String
formatZip zip' zip4 = (show zip') <> "-" <> (show zip4)
