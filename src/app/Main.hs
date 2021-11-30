import Control.Newtype.Generics ( op )
import Library.Module
  ( Record (..)
  , Name (..), Address (..)
  , Zip (..), Zip4 (..)
  , formatZip )


main :: IO ()
main = do
  let goodRecord = Record
        (Name "Stimpson J Cat")
        (Address "123 Alpha St")
        (Zip 12345)
        (Zip4 6789)
  print goodRecord

  print $ op Name . rName $ goodRecord
  print $ op Zip . rZip $ goodRecord

  print $ formatZip (rZip goodRecord) (rZipPlus4 goodRecord)
