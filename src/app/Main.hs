import Library.Module ( Record (..), formatZip )


main :: IO ()
main = do
  let badRecord = Record "123 Alpha St" "Stimpson J Cat" 6789 12345
  print badRecord

  print $ formatZip (rZip badRecord) (rZipPlus4 badRecord)
