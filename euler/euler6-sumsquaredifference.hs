sumSquareDifference n = (sum [1..n])^2 - sum (map (^2) [1..n])
main = print(sumSquareDifference 100)
