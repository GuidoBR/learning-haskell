f :: [Int] -> [Int]
f lst = [value | (index, value) <- zip [0..] lst, odd index]

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata

