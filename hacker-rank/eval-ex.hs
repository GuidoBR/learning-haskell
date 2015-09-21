e :: Double -> [Double]
e x = [x**n / product [1..n] | n <- [0..]]

solve :: Double -> Double
solve x = sum $ take 10 (e x)

main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words
