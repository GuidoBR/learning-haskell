pascal :: Int -> [[Integer]]
pascal n = take n triangle
    where triangle = iterate (\row -> zipWith (+) ([0]++row) (row++[0])) [1]

main = do
    inputN <- getLine
    let n = inputN :: Int

    mapM_ print (pascal n)
